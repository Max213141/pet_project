import 'package:flutter/material.dart';
import 'package:pet_project/common_widgets/widgets.dart';
import 'package:pet_project/utils/styles/styles.dart';

class IntroScreenPart extends StatelessWidget {
  final String image;
  final String text;
  final bool useProvidedChild;
  final Widget? providedChild;

  const IntroScreenPart({
    Key? key,
    required this.text,
    required this.image,
    this.useProvidedChild = false,
    this.providedChild,
  }) : super(key: key);

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
            padding: EdgeInsets.only(right: size.width / 6),
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
