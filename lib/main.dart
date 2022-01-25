import 'package:flutter/material.dart';
import 'package:shop_app/choose_language.dart';
import 'package:shop_app/light_theme.dart';

import 'package:shop_app/theme_service.dart';

import 'dark_theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        themeMode: ThemeService().theme,
        theme: theme(),
        darkTheme: darkTheme(),
        home: YourLanguage());
  }
}
