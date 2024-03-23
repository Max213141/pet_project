import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:life_sync/blocs/blocs.dart';
import 'package:life_sync/utils/utils.dart';

class LoadedQuoteBody extends StatelessWidget {
  final String quote;
  const LoadedQuoteBody({
    super.key,
    required this.quote,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => BlocProvider.of<QuoteBloc>(context).add(const LoadQuote()),
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
