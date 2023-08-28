import 'dart:ui';

import 'package:google_fonts/google_fonts.dart';
import 'package:pet_project/utils/app_colors.dart';

part 'text.dart';

// extension TextUtils on TextStyle {
//   TextStyle tabular() => copyWith(
//         fontFeatures: <FontFeature>[
//           const FontFeature.tabularFigures(),
//           ...?fontFeatures,
//         ],
//       );
//   TextStyle sups() => copyWith(
//         fontFeatures: <FontFeature>[
//           const FontFeature.enable('sups'),
//           ...?fontFeatures,
//         ],
//       );

//   TextStyle crossed() => copyWith(
//         decoration: TextDecoration.lineThrough,
//         decorationColor: SlivkiColors.red,
//       );

//   Size layoutSize(String text) {
//     final TextPainter textPainter = TextPainter(
//         text: TextSpan(text: text, style: this),
//         maxLines: 1,
//         textDirection: TextDirection.ltr)
//       ..layout(minWidth: 0, maxWidth: double.infinity);
//     return textPainter.size;
//   }
// }

class MentalHealthTextStyles {
  static TextStyle none = TextStyle(height: 0, fontSize: 0);

  // static const _ButtonTextStyle buttons = _ButtonTextStyle();
  // static const _HeadersTextStyle headers = _HeadersTextStyle();
  static const _TextTextStyle text = _TextTextStyle();
  // static const _InputTextStyle input = _InputTextStyle();
  // static const _PopupsTextStyle popups = _PopupsTextStyle();
  // static const _OnlineOrderTextStyle onlineOrder = _OnlineOrderTextStyle();
}
