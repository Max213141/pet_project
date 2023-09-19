import 'package:flutter/material.dart';
import 'package:pet_project/utils/app_colors.dart';

// import 'package:slivki/res/colors.dart';
// import 'package:slivki/ui/kit/kit.dart';

// export 'statusbar_gradient.dart';
// export 'upward_gradient_box.dart';

class MentalHealthDecorations {
  static const _Shadows shadows = _Shadows();
  static const _Borders borders = _Borders.config();

  // /// shape of all shown modal bottom sheets
  static ShapeBorder get modalBottomSheetShape => RoundedRectangleBorder(
        borderRadius: borders.topCorners,
      );
  const MentalHealthDecorations();
}

class _Shadows {
  const _Shadows();

  BoxShadow blur4spread2(BuildContext context) => BoxShadow(
        color: Theme.of(context).shadowColor,
        blurRadius: 4,
        spreadRadius: 2,
      );

  BoxShadow blur3spread1(BuildContext context) => BoxShadow(
        color: Theme.of(context).shadowColor,
        blurRadius: 4,
        spreadRadius: 4,
      );

  // BoxShadow get categoryButton =>
  //     BoxShadow(color: SlivkiColors.black.withOpacity(0.1), blurRadius: 10);

  // BoxShadow get blur40spread0offset4 => BoxShadow(
  //       color: SlivkiColors.black.withOpacity(0.1),
  //       offset: const Offset(0, 4),
  //       blurRadius: 30,
  //     );
  // BoxShadow get whiteblur40spread0offset4 => BoxShadow(
  //       color: SlivkiColors.white.withOpacity(0.8),
  //       offset: const Offset(2, 2),
  //       blurRadius: 30,
  //     );
}

class _Borders {
  // BorderSide get none => const BorderSide(
  //       width: 0,
  //       color: SlivkiColors.backgroundTransparent,
  //     );

  // /// 2px width [SlivkiColors.action]
  Border get coloredSmall => const Border.fromBorderSide(
        BorderSide(
          width: 1,
          color: AppColor.mainDarkColor,
        ),
      );

  Border get chartBorder => const Border.fromBorderSide(
        BorderSide(
          width: 1,
          color: AppColor.primaryBackgroundColor,
        ),
      );

  // Border get newNoteButton => const Border.fromBorderSide(
  //       BorderSide(
  //         width: 0.3,
  //         color: SlivkiColors.grey,
  //       ),
  //     );

  // BorderSide get inputFocused => const BorderSide(
  //       width: 1,
  //       color: SlivkiColors.disabledAction,
  //     );

  // BorderSide get inputError => const BorderSide(
  //       width: 1,
  //       color: SlivkiColors.error,
  //     );

  // BorderSide get input => const BorderSide(
  //       width: 1,
  //       color: SlivkiColors.colorBorder,
  //     );

  /// 12
  BorderRadius get bottomCorners => const BorderRadius.only(
        bottomLeft: Radius.circular(12),
        bottomRight: Radius.circular(12),
      );

  /// 24
  BorderRadius get topCorners => const BorderRadius.only(
        topLeft: Radius.circular(24),
        topRight: Radius.circular(24),
      );

  /// 48
  BorderRadius get radiusHuge => const BorderRadius.only(
        topLeft: Radius.circular(128),
        topRight: Radius.circular(128),
        bottomRight: Radius.circular(128),
        bottomLeft: Radius.circular(128),
      );

  BorderRadius get radiusC18 => const BorderRadius.only(
        topLeft: Radius.circular(18),
        topRight: Radius.circular(18),
        bottomRight: Radius.circular(18),
        bottomLeft: Radius.circular(18),
      );

  BorderRadius get radiusC32 => const BorderRadius.only(
        topLeft: Radius.circular(32),
        topRight: Radius.circular(32),
        bottomRight: Radius.circular(32),
        bottomLeft: Radius.circular(32),
      );

  BorderRadius get radiusC36 => const BorderRadius.only(
        topLeft: Radius.circular(36),
        topRight: Radius.circular(36),
        bottomRight: Radius.circular(36),
        bottomLeft: Radius.circular(36),
      );

  /// 22
  BorderRadius get radiusC22 => const BorderRadius.only(
        topLeft: Radius.circular(22),
        topRight: Radius.circular(22),
        bottomRight: Radius.circular(22),
        bottomLeft: Radius.circular(22),
      );

  /// 20
  BorderRadius get radiusC20 => BorderRadius.circular(20);

  BorderRadius get radiusBLeftC40 => const BorderRadius.only(
        bottomLeft: Radius.circular(40),
      );

  BorderRadius get categoryItemRadius => const BorderRadius.only(
        topLeft: Radius.circular(20),
        topRight: Radius.circular(40),
        bottomRight: Radius.circular(20),
        bottomLeft: Radius.circular(20),
      );

  BorderRadius get radiusTopC20 => const BorderRadius.only(
        topRight: Radius.circular(20),
        topLeft: Radius.circular(20),
      );

  BorderRadius get radiusBTRightC40 => const BorderRadius.only(
        topLeft: Radius.circular(20),
        topRight: Radius.circular(40),
        bottomRight: Radius.circular(40),
        bottomLeft: Radius.circular(20),
      );
  BorderRadius get radiusLeftC40 => const BorderRadius.only(
        topLeft: Radius.circular(40),
        topRight: Radius.circular(20),
        bottomRight: Radius.circular(20),
        bottomLeft: Radius.circular(20),
      );

  /// 25
  BorderRadius get radiusC25 => const BorderRadius.only(
        topLeft: Radius.circular(25),
        topRight: Radius.circular(25),
        bottomRight: Radius.circular(25),
        bottomLeft: Radius.circular(25),
      );

  /// 16
  BorderRadius get radiusC16 => const BorderRadius.only(
        topLeft: Radius.circular(16),
        topRight: Radius.circular(16),
        bottomRight: Radius.circular(16),
        bottomLeft: Radius.circular(16),
      );

  // 12
  BorderRadius get radiusC12 => const BorderRadius.only(
        topLeft: Radius.circular(12),
        topRight: Radius.circular(12),
        bottomLeft: Radius.circular(12),
        bottomRight: Radius.circular(12),
      );

  // 10
  BorderRadius get radiusC10 => const BorderRadius.only(
        topLeft: Radius.circular(10),
        topRight: Radius.circular(10),
        bottomLeft: Radius.circular(10),
        bottomRight: Radius.circular(10),
      );

  BorderRadius get radiusC15 => const BorderRadius.only(
        topLeft: Radius.circular(15),
        topRight: Radius.circular(15),
        bottomLeft: Radius.circular(15),
        bottomRight: Radius.circular(15),
      );

  /// 8
  BorderRadius get radiusC8 => const BorderRadius.only(
        topLeft: Radius.circular(8),
        topRight: Radius.circular(8),
        bottomLeft: Radius.circular(8),
        bottomRight: Radius.circular(8),
      );

  BorderRadius get radiusC6 => const BorderRadius.only(
        topLeft: Radius.circular(6),
        topRight: Radius.circular(6),
        bottomLeft: Radius.circular(6),
        bottomRight: Radius.circular(6),
      );

  /// 4
  BorderRadius get radiusC4 => const BorderRadius.only(
        topLeft: Radius.circular(4),
        topRight: Radius.circular(4),
        bottomLeft: Radius.circular(4),
        bottomRight: Radius.circular(4),
      );

  const _Borders.config();
}
