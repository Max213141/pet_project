import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:life_sync/utils/utils.dart';
import 'package:http/http.dart' as http;

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
    getQuote();
  }

  // get a random Quote from the API
  getQuote() async {
    _log('get quote triggered');
    try {
      setState(() {
        working = true;
        quote = "";
      });
      var response = await http.post(
          Uri.parse('http://api.forismatic.com/api/1.0/'),
          body: {"method": "getQuote", "format": "json", "lang": "en"});

      setState(() {
        try {
          String fixedResponse = response.body
              .replaceAll(r"\'", "'")
              .replaceAll("â", "")
              .replaceAll("", "")
              .replaceAll(".", "");
          var res = jsonDecode(fixedResponse);
          _log('response quote - $res');

          quote = res["quoteText"].replaceAll("â", " ");
        } catch (e) {
          getQuote();
        }
      });
    } catch (e) {
      offline();
    }
  }

  // if it is offline, show a fixed Quote
  offline() {
    setState(() {
      widget.l10n.homeScreenQuestion;
      quote = "Change your thoughts and you will change the world";
      working = false;
    });
  }

  // Main build function
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: working ? getQuote : null,
      child: SizedBox(
        height: MediaQuery.of(context).size.height / 7,
        width: MediaQuery.of(context).size.width,
        child: DecoratedBox(
          decoration: const BoxDecoration(color: AppColor.primaryColor),
          child: DecoratedBox(
            decoration: const BoxDecoration(
              color: AppColor.primaryBackgroundColor,
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(40),
              ),
            ),
            child: Center(
              child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      children: [
                        TextSpan(
                            text: '“ ',
                            style: MentalHealthTextStyles.text.signikaFontF24),
                        TextSpan(
                          text: quote,
                          style: quote.length < 100
                              ? MentalHealthTextStyles.text.signikaFontF24
                              : MentalHealthTextStyles
                                  .text.signikaSecondaryFontF16,
                        ),
                        TextSpan(
                            text: ' ”',
                            style: MentalHealthTextStyles.text.signikaFontF24),
                      ],
                    ),
                  )),
            ),
          ),
        ),
      ),
    );
  }
}
