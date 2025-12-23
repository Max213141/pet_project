import 'package:flutter/material.dart';
import 'package:life_sync/common_widgets/widgets.dart';
import 'package:life_sync/utils/styles/styles.dart';

class IntroScreenPart extends StatelessWidget {
  final String image;
  final String text;
  final bool useProvidedChild;
  final Widget? providedChild;

  const IntroScreenPart({
    super.key,
    required this.text,
    required this.image,
    this.useProvidedChild = false,
    this.providedChild,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: size.height / 3,
            child: MentalHealthSvgPicture(
              picture: image,
              fit: BoxFit.fill,
            ),
          ),
          const SizedBox(height: 100),
          Padding(
            padding: EdgeInsets.only(right: size.width * .1),
            child: useProvidedChild
                ? providedChild
                : Text(
                    text,
                    style: MentalHealthTextStyles.text.signikaFontF24,
                  ),
          ),
        ],
      ),
    );
  }
}
