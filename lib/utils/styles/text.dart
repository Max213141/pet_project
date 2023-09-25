part of 'styles.dart';

class _TextTextStyle {
  get signikaPrimaryFontF28 => GoogleFonts.signika(
        fontSize: 28,
        height: 28 / 24,
        letterSpacing: -.5,
        fontWeight: FontWeight.w400,
      );

  get signikaPrimaryFontF22N => GoogleFonts.signika(
        fontSize: 22,
        height: 22 / 20,
        letterSpacing: -.41,
        color: AppColor.primaryColor,
        fontWeight: FontWeight.w800,
      );
  get signikaPrimaryFontF22Black => GoogleFonts.signika(
        fontSize: 22,
        height: 22 / 20,
        letterSpacing: -.41,
        color: Colors.black,
        fontWeight: FontWeight.w200,
      );

  get signikaSecondaryFontF16 => GoogleFonts.signika(
        fontSize: 16,
        height: 16 / 14,
        letterSpacing: -.41,
        color: AppColor.oneMoreDarkColor,
        fontWeight: FontWeight.w600,
      );
  get signikaFontF24 => GoogleFonts.signika(
        fontSize: 24,
        height: 24 / 20,
        letterSpacing: -.41,
        color: AppColor.oneMoreDarkColor,
        fontWeight: FontWeight.w400,
      );

  get signikaFontF22Bold => GoogleFonts.signika(
        fontSize: 22,
        height: 22 / 18,
        letterSpacing: -.41,
        color: AppColor.oneMoreDarkColor,
        fontWeight: FontWeight.w400,
      );
  get signikaFontF24Green => GoogleFonts.signika(
        fontSize: 24,
        height: 24 / 20,
        letterSpacing: -.41,
        color: AppColor.primaryBackgroundColor,
        fontWeight: FontWeight.w400,
      );

  get signikaSecondaryFontF42 => GoogleFonts.signika(
        fontSize: 42,
        height: 42 / 36,
        // letterSpacing: -.41,
        color: AppColor.oneMoreDarkColor,
        fontWeight: FontWeight.w400,
      );

  get popinsSecondaryFontF12 => GoogleFonts.poppins(
        fontSize: 12,
        height: 12 / 12,
        letterSpacing: -.41,
        color: AppColor.oneMoreDarkColor,
        fontWeight: FontWeight.w200,
      );
  get popinsSecondaryFontF14 => GoogleFonts.poppins(
        fontSize: 14,
        height: 14 / 12,
        letterSpacing: -.41,
        color: AppColor.oneMoreDarkColor,
        fontWeight: FontWeight.w200,
      );

  get popinsSecondaryFontF16 => GoogleFonts.poppins(
        fontSize: 16,
        height: 16 / 14,
        letterSpacing: -.41,
        color: AppColor.oneMoreDarkColor,
        fontWeight: FontWeight.w600,
      );
  get userName => GoogleFonts.signika(
        fontSize: 28,
        height: 28 / 24,
        letterSpacing: -.5,
        color: AppColor.primaryColor,
        fontWeight: FontWeight.w300,
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
