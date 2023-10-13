import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MentalHealthSvgPicture extends StatelessWidget {
  final String picture;
  final Color? color;
  final BoxFit? fit;
  final AlignmentGeometry? alignment;
  const MentalHealthSvgPicture({
    super.key,
    required this.picture,
    this.color,
    this.fit,
    this.alignment,
  });

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      picture,
      colorFilter: (color != null)
          ? ColorFilter.mode(
              color!,
              BlendMode.srcIn,
            )
          : null,
      fit: fit ?? BoxFit.contain,
      alignment: alignment ?? Alignment.center,
    );
  }
}
