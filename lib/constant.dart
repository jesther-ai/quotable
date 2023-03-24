import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class Constant {
//====================================================

  static Color kMainPrimayColor = HexColor('#EB513A');

  static Color kMainSecondaryColor = HexColor('#483131');

  static Color kMainTertiaryColor = HexColor('#FAFAFA');

  static Color kMainQuaternary = HexColor('#2E2E2E');

//====================================================

  static Color kDangerPrimayColor = HexColor('#AF1720');

  static Color kDangerSecondaryColor = HexColor('#FFD4D7');

  static Color kDangerHoverColor = HexColor('#8E0A12');

  static Color kDangerFocusColor = HexColor('#E4C9CA');

//====================================================

  static Color kWarningPrimayColor = HexColor('#FFCC00');

  static Color kWarningSecondaryColor = HexColor('#FFF4C6');

  static Color kWarningrHoverColor = HexColor('#EDBE02');

  static Color kWarningFocusColor = HexColor('#ECDBA3');

//====================================================

  static Color kInfoPrimayColor = HexColor('#007AFF');

  static Color kInfoSecondaryColor = HexColor('#C1DFFF');

  static Color kInforHoverColor = HexColor('#0060C8');

  static Color kInfoFocusColor = HexColor('#A5CAF2');

//====================================================

  static Color kSuccessPrimayColor = HexColor('#34C759');

  static Color kSuccessSecondaryColor = HexColor('#ACE3BA');

  static Color kSuccessrHoverColor = HexColor('#2CA74B');

  static Color kSuccessFocusColor = HexColor('#9CC5A6');

//====================================================

  static List<Color> grayScale = [
    HexColor('#2E2E2E'), // 0
    HexColor('#626262'), // 1
    HexColor('#747474'), // 2
    HexColor('#959595'), // 3
    HexColor('#A9A9A9'), // 4
    HexColor('#C3C3C3'), // 5
    HexColor('#D9D9D9'), // 6
    HexColor('#EFEFEF'), // 7
    HexColor('#FAFAFA'), // 8
    HexColor('#FFFFFF'), // 9
  ];
  static final pageStorage = PageStorageBucket();
//====================================================

  static TextStyle header1ExtraBold = GoogleFonts.nunitoSans(
    fontWeight: fontWeightMap[FontWeightFigma.extraBold],
    fontSize: 34,
  );
  static TextStyle header1Bold = GoogleFonts.nunitoSans(
    fontWeight: fontWeightMap[FontWeightFigma.bold],
    fontSize: 34,
  );
  static TextStyle header1SemiBold = GoogleFonts.nunitoSans(
    fontWeight: fontWeightMap[FontWeightFigma.semiBold],
    fontSize: 34,
  );
  static TextStyle header1Regular = GoogleFonts.nunitoSans(
    fontWeight: fontWeightMap[FontWeightFigma.regular],
    fontSize: 34,
  );
//====================================================
//====================================================
  static TextStyle header2ExtraBold = GoogleFonts.nunitoSans(
    fontWeight: fontWeightMap[FontWeightFigma.extraBold],
    fontSize: 30,
  );
  static TextStyle header2Bold = GoogleFonts.nunitoSans(
    fontWeight: fontWeightMap[FontWeightFigma.bold],
    fontSize: 30,
  );
  static TextStyle header2SemiBold = GoogleFonts.nunitoSans(
    fontWeight: fontWeightMap[FontWeightFigma.semiBold],
    fontSize: 30,
  );
  static TextStyle header2Regular = GoogleFonts.nunitoSans(
    fontWeight: fontWeightMap[FontWeightFigma.regular],
    fontSize: 30,
  );
//====================================================
//====================================================
  static TextStyle titleExtraBold = GoogleFonts.nunitoSans(
    fontWeight: fontWeightMap[FontWeightFigma.extraBold],
    fontSize: 20,
  );
  static TextStyle titleBold = GoogleFonts.nunitoSans(
    fontWeight: fontWeightMap[FontWeightFigma.bold],
    fontSize: 20,
  );
  static TextStyle titleSemiBold = GoogleFonts.nunitoSans(
    fontWeight: fontWeightMap[FontWeightFigma.semiBold],
    fontSize: 20,
  );
  static TextStyle titleRegular = GoogleFonts.nunitoSans(
    fontWeight: fontWeightMap[FontWeightFigma.regular],
    fontSize: 20,
  );
//====================================================
//====================================================
  static TextStyle headlineExtraBold = GoogleFonts.nunitoSans(
    fontWeight: fontWeightMap[FontWeightFigma.extraBold],
    fontSize: 17,
  );
  static TextStyle headlineBold = GoogleFonts.nunitoSans(
    fontWeight: fontWeightMap[FontWeightFigma.bold],
    fontSize: 17,
  );
  static TextStyle headlineSemiBold = GoogleFonts.nunitoSans(
    fontWeight: fontWeightMap[FontWeightFigma.semiBold],
    fontSize: 17,
  );
  static TextStyle headlineRegular = GoogleFonts.nunitoSans(
    fontWeight: fontWeightMap[FontWeightFigma.regular],
    fontSize: 17,
  );
//====================================================
//====================================================
  static TextStyle subheadExtraBold = GoogleFonts.nunitoSans(
    fontWeight: fontWeightMap[FontWeightFigma.extraBold],
    fontSize: 15,
  );
  static TextStyle subheadBold = GoogleFonts.nunitoSans(
    fontWeight: fontWeightMap[FontWeightFigma.bold],
    fontSize: 15,
  );
  static TextStyle subheadSemiBold = GoogleFonts.nunitoSans(
    fontWeight: fontWeightMap[FontWeightFigma.semiBold],
    fontSize: 15,
  );
  static TextStyle subheadRegular = GoogleFonts.nunitoSans(
    fontWeight: fontWeightMap[FontWeightFigma.regular],
    fontSize: 15,
  );
//====================================================
//====================================================
  static TextStyle footnoteExtraBold = GoogleFonts.nunitoSans(
    fontWeight: fontWeightMap[FontWeightFigma.extraBold],
    fontSize: 13,
  );
  static TextStyle footnoteBold = GoogleFonts.nunitoSans(
    fontWeight: fontWeightMap[FontWeightFigma.bold],
    fontSize: 13,
  );
  static TextStyle footnoteSemiBold = GoogleFonts.nunitoSans(
    fontWeight: fontWeightMap[FontWeightFigma.semiBold],
    fontSize: 13,
  );
  static TextStyle footnoteRegular = GoogleFonts.nunitoSans(
    fontWeight: fontWeightMap[FontWeightFigma.regular],
    fontSize: 13,
  );
//====================================================
  static TextStyle footnote1ExtraBold = GoogleFonts.nunitoSans(
    fontWeight: fontWeightMap[FontWeightFigma.extraBold],
    fontSize: 11,
  );
  static TextStyle footnote1Bold = GoogleFonts.nunitoSans(
    fontWeight: fontWeightMap[FontWeightFigma.bold],
    fontSize: 11,
  );
  static TextStyle footnote1SemiBold = GoogleFonts.nunitoSans(
    fontWeight: fontWeightMap[FontWeightFigma.semiBold],
    fontSize: 11,
  );
  static TextStyle footnote1Regular = GoogleFonts.nunitoSans(
    fontWeight: fontWeightMap[FontWeightFigma.regular],
    fontSize: 11,
  );
//====================================================
//====================================================

  static Map<FontWeightFigma, FontWeight> fontWeightMap = {
    FontWeightFigma.thin: FontWeight.w100,
    FontWeightFigma.extraLight: FontWeight.w200,
    FontWeightFigma.light: FontWeight.w300,
    FontWeightFigma.regular: FontWeight.w400,
    FontWeightFigma.medium: FontWeight.w500,
    FontWeightFigma.semiBold: FontWeight.w600,
    FontWeightFigma.bold: FontWeight.w700,
    FontWeightFigma.extraBold: FontWeight.w800,
    FontWeightFigma.black: FontWeight.w900,
  };

  final activeBorder = UnderlineInputBorder(
    borderSide: BorderSide(color: Constant.grayScale[6]),
  );
  final errorBorder = UnderlineInputBorder(
    borderSide: BorderSide(color: Constant.kDangerPrimayColor),
  );
  final disabledBorder = UnderlineInputBorder(
    borderSide: BorderSide(color: Constant.grayScale[6]),
  );

  static final darkTheme = ThemeData.dark().copyWith(
    primaryColor: grayScale.last,
    primaryColorDark: Colors.black,
  );

  static final lightTheme = ThemeData().copyWith(
    primaryColor: Colors.black,
    primaryColorDark: grayScale.last,
  );

  // static final darkTheme = ThemeData.dark().copyWith(
  //   primaryColor: grayScale.last,
  //   primaryColorDark: grayScale.first,
  // );

  // static final lightTheme = ThemeData().copyWith(
  //   primaryColor: grayScale.first,
  //   primaryColorDark: grayScale.last,
  // );

  static Locale stringToLocale(String input) {
    if (input == 'Català') {
      return const Locale('ca', 'ES');
    }
    if (input == 'English') {
      return const Locale('en', 'UK');
    }
    if (input == 'Spanish') {
      return const Locale('es', 'ES');
    }
    if (input == 'French') {
      return const Locale('fr', 'FR');
    } else {
      return const Locale('en', 'UK');
    }
  }

  static Locale stringLangCodeToLocale(String? input) {
    if (input == 'ca') {
      return const Locale('ca', 'ES');
    }
    if (input == 'en') {
      return const Locale('en', 'UK');
    }
    if (input == 'es') {
      return const Locale('es', 'ES');
    }
    if (input == 'fr') {
      return const Locale('fr', 'FR');
    } else {
      return const Locale('en', 'UK');
    }
  }

  static String localeToStringName(Locale input) {
    if (input.languageCode == 'ca') {
      return 'Català';
    }
    if (input.languageCode == 'en') {
      return 'English';
    }
    if (input.languageCode == 'es') {
      return 'Spanish';
    }
    if (input.languageCode == 'fr') {
      return 'French';
    } else {
      return '';
    }
  }
}

enum FontWeightFigma {
  thin,
  extraLight,
  light,
  regular,
  medium,
  semiBold,
  bold,
  extraBold,
  black,
}

class HexColor extends Color {
  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));

  static int _getColorFromHex(String hexColor) {
    // ignore: parameter_assignments
    hexColor = hexColor.toUpperCase().replaceAll('#', '');
    if (hexColor.length == 6) {
      // ignore: parameter_assignments
      hexColor = 'FF$hexColor';
    }
    return int.parse(hexColor, radix: 16);
  }
}
