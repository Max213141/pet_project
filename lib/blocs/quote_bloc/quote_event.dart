part of 'quote_bloc.dart';

@freezed
class QuoteEvent with _$QuoteEvent {
  const factory QuoteEvent.loadQuote() = LoadQuote;
}
