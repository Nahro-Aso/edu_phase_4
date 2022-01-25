import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

ThemeData darkTheme() {
  return FlexThemeData.dark(
    colors: const FlexSchemeColor(
      primary: Color(0xFF0BB5E5),
      primaryVariant: Color(0xff3700b3),
      secondary: Color(0xff03dac6),
      secondaryVariant: Color(0xff018786),
      error: Color(0xffb00020),
    ).defaultError.toDark(62),
    surfaceMode: FlexSurfaceMode.level,
    blendLevel: 40,
    appBarBackground: Get.theme.scaffoldBackgroundColor,
    fontFamily: "bahij",
    appBarStyle: FlexAppBarStyle.background,
    transparentStatusBar: true,
    tabBarStyle: FlexTabBarStyle.flutterDefault,
    applyElevationOverlayColor: true,
    tooltipsMatchBackground: true,
    bottomAppBarElevation: 10,
    swapColors: false,
    darkIsTrueBlack: false,
    useSubThemes: true,
    visualDensity: FlexColorScheme.comfortablePlatformDensity,
    subThemesData: const FlexSubThemesData(
        useTextTheme: true,
        fabUseShape: false,
        interactionEffects: true,
        bottomNavigationBarOpacity: 0.95,
        bottomNavigationBarElevation: 0,
        inputDecoratorIsFilled: true,
        inputDecoratorBorderType: FlexInputBorderType.outline,
        inputDecoratorUnfocusedHasBorder: true,
        blendOnColors: true,
        blendTextTheme: true,
        popupMenuOpacity: 0.95,
        toggleButtonsRadius: 5,
        cardElevation: 5.0,
        bottomSheetRadius: 30),
  );
}
