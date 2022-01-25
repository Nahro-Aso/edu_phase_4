import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';

ThemeData theme() {
  return FlexThemeData.light(
    colors: const FlexSchemeColor(
      primary: Color(0xFFEC615C),
      primaryVariant: Color(0xff3700b3),
      secondary: Color(0xff03dac6),
      secondaryVariant: Color(0xff018786),
      appBarColor: Color(0xffffffff),
      error: Color(0xffb00020),
    ),
    surfaceMode: FlexSurfaceMode.level,

    fontFamily: "bahij",

    blendLevel: 40,

    appBarBackground: const Color(0xffffffff),

    transparentStatusBar: true,
    tabBarStyle: FlexTabBarStyle.flutterDefault,
    tooltipsMatchBackground: true,

    swapColors: false,
    lightIsWhite: true,
    useSubThemes: true,
    bottomAppBarElevation: 10,
    visualDensity: FlexColorScheme.comfortablePlatformDensity,
    // To use playground font, add GoogleFonts package and uncomment:
    // fontFamily: GoogleFonts.notoSans().fontFamily,
    subThemesData: const FlexSubThemesData(
      useTextTheme: true,
      fabUseShape: true,
      interactionEffects: true,
      bottomNavigationBarOpacity: 0.95,
      bottomNavigationBarElevation: 0.0,
      inputDecoratorIsFilled: true,
      inputDecoratorBorderType: FlexInputBorderType.outline,
      inputDecoratorUnfocusedHasBorder: true,
      blendOnColors: true,
      blendTextTheme: true,
      popupMenuOpacity: 0.95,
      cardElevation: 5,
    ),
  );
}
