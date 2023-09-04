part of 'styles.dart';

class _TextTextStyle {
  get mainCommonF20N => GoogleFonts.signika(
        fontSize: 28,
        height: 28 / 24,
        letterSpacing: -.5,
        fontWeight: FontWeight.w400,
      );
  get userName => GoogleFonts.signika(
        fontSize: 28,
        height: 28 / 24,
        letterSpacing: -.5,
        color: AppColor.userNameColor,
        fontWeight: FontWeight.w800,
      );

  get mainCommonF14 => GoogleFonts.dosis(
        fontSize: 14,
        height: 14 / 12,
        letterSpacing: -.41,
        fontWeight: FontWeight.w400,
      );

  get mainCommonF16 => GoogleFonts.dosis(
        fontSize: 16,
        height: 16 / 18,
        letterSpacing: -.41,
        fontWeight: FontWeight.w300,
      );

  get mainCommonF18 => GoogleFonts.dosis(
        fontSize: 18,
        height: 18 / 18,
        letterSpacing: -.41,
        fontWeight: FontWeight.w400,
      );
  get mainCommonF20 => GoogleFonts.dosis(
        fontSize: 20,
        height: 20 / 20,
        letterSpacing: -.41,
        fontWeight: FontWeight.w400,
      );

  get mainCommonF20White => mainCommonF20.copyWith(color: Colors.white);

  get mainTitleF24 => GoogleFonts.sansita(
        fontSize: 24,
        color: AppColor.mainDarkColor,
        height: 24 / 18,
        letterSpacing: -.51,
      );

  const _TextTextStyle();
}
