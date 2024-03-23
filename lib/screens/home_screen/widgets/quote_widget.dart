import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:life_sync/blocs/blocs.dart';
import 'package:life_sync/screens/home_screen/widgets/widgets.dart';
import 'package:life_sync/utils/utils.dart';

void _log(dynamic message) => Logger.projectLog(message, name: 'quote_widget');

class QuoteWidget extends StatefulWidget {
  final AppLocalizations l10n;

  const QuoteWidget({
    super.key,
    required this.l10n,
  });

  @override
  State<QuoteWidget> createState() => _QuoteWidgetState();
}

class _QuoteWidgetState extends State<QuoteWidget> {
  late String quote;
  bool working = false;
  final grey = Colors.blueGrey[800];

  @override
  void initState() {
    super.initState();
    quote = "";
    BlocProvider.of<QuoteBloc>(context).add(const LoadQuote());
  }

// Main build function
  @override
  Widget build(BuildContext context) {
    final l10n = l10nOf(context);

    Widget body = const SizedBox.shrink();
    return BlocConsumer<QuoteBloc, QuoteState>(
      listener: (context, state) {
        state.whenOrNull();
      },
      builder: (context, state) {
        state.when(
          initial: () =>
              body = LoadedQuoteBody(quote: l10n.homeScreenDefaultQuote),
          loading: () => body = const QuoteLoader(),
          quoteLoaded: (quote) => body = LoadedQuoteBody(quote: quote),
          quoteError: () =>
              body = LoadedQuoteBody(quote: l10n.homeScreenDefaultQuote),
        );
        return body;
      },
    );
  }
}
