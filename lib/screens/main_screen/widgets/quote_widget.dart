import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:pet_project/utils/utils.dart';
import 'package:http/http.dart' as http;

class QuoteWidget extends StatefulWidget {
  const QuoteWidget({super.key});

  @override
  State<QuoteWidget> createState() => _QuoteWidgetState();
}

void _log(dynamic message) => Logger.projectLog(message, name: 'quote_widget');

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
          ;
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
                            // textAlign: TextAlign.center,
                            style:
                                MentalHealthTextStyles.text.signikaQuoteFontF24
                            // : MentalHealthTextStyles.text.signikaSecondaryFontF16,
                            // maxLines: 3,
                            // overflow: TextOverflow.ellipsis,
                            ),
                        TextSpan(
                          text: '$quote',
                          // textAlign: TextAlign.center,
                          style: quote.length < 100
                              ? MentalHealthTextStyles.text.signikaQuoteFontF24
                              : MentalHealthTextStyles
                                  .text.signikaSecondaryFontF16,
                          // maxLines: 3,
                          // overflow: TextOverflow.ellipsis,
                        ),
                        TextSpan(
                            text: ' ”',
                            // textAlign: TextAlign.center,
                            style:
                                MentalHealthTextStyles.text.signikaQuoteFontF24
                            // : MentalHealthTextStyles.text.signikaSecondaryFontF16,
                            // maxLines: 3,
                            // overflow: TextOverflow.ellipsis,
                            ),
                      ],
                    ),
                  )

                  // RichText(
                  //   textAlign: TextAlign.center,
                  //   text:

                  // TextSpan(
                  //   text: quote.isNotEmpty ? '“ ' : "",
                  //   style: MentalHealthTextStyles.text.signikaSecondaryFontF16
                  //       .copyWith(
                  //     fontSize: 30.0,
                  //     fontWeight: FontWeight.w700,
                  //   ),
                  //   children: [
                  //     TextSpan(
                  //       text: quote.isNotEmpty ? quote : "",

                  //       style: MentalHealthTextStyles.text.signikaQuoteFontF24,
                  //     ),
                  //     TextSpan(
                  //       text: quote.isNotEmpty ? '”' : "",
                  //       style: MentalHealthTextStyles
                  //           .text.signikaSecondaryFontF16
                  //           .copyWith(
                  //         fontSize: 30.0,
                  //         fontWeight: FontWeight.w700,
                  //       ),
                  //     )
                  //   ],
                  // ),
                  ),
            ),
          ),
        ),
      ),
    );

    //  Scaffold(
    //   backgroundColor: grey,
    //   body:
    //   floatingActionButton: Row(
    //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //     children: <Widget>[
    //       InkWell(
    //         onTap: !working ? getQuote : null,
    //         child: Icon(Icons.refresh, size: 35, color: Colors.white),
    //       ),
    //     ],
    //   ),
    // );
  }
}
