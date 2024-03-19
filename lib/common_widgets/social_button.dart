import 'package:flutter/material.dart';
import 'package:life_sync/common_widgets/widgets.dart';

class SocialsButton extends StatelessWidget {
  final VoidCallback onTap;
  final String picturePath;
  const SocialsButton({
    super.key,
    required this.onTap,
    required this.picturePath,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        height: 40,
        width: 40,
        child: MentalHealthSvgPicture(
          picture: picturePath,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
