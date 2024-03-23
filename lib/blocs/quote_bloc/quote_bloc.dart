import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:life_sync/utils/utils.dart';
import 'package:http/http.dart' as http;

part 'quote_event.dart';
part 'quote_state.dart';
part 'quote_bloc.freezed.dart';

void _log(dynamic message) => Logger.projectLog(message, name: 'theme_bloc');

class QuoteBloc extends Bloc<QuoteEvent, QuoteState> {
  QuoteBloc() : super(const _Initial()) {
    on<QuoteEvent>((events, emit) async {
      await events.map(
        loadQuote: (event) async => await _loadQuote(event, emit),
      );
    });
  }

  _loadQuote(LoadQuote event, Emitter<QuoteState> emit) async {
    // get a random Quote from the API

    emit(const QuoteState.loading());
    final String quote;
    _log('get quote triggered');
    try {
      var response = await http.post(
          Uri.parse('http://api.forismatic.com/api/1.0/'),
          body: {"method": "getQuote", "format": "json", "lang": "en"});

      String fixedResponse = response.body
          .replaceAll(r"\'", "'")
          .replaceAll("â", "")
          .replaceAll("", "")
          .replaceAll(".", "");
      var res = jsonDecode(fixedResponse);
      _log('response quote - $res');

      quote = res["quoteText"].replaceAll("â", " ");
      emit(QuoteState.quoteLoaded(quote: quote));
    } catch (e) {
      emit(const QuoteState.quoteError());
    }
  }
}
