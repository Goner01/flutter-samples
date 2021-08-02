import 'package:flutter/material.dart';

class ThemeBloc extends ChangeNotifier {
  ThemeData _themeData;

  ThemeBloc(this._themeData);

  getTheme() => _themeData;

  setTheme(ThemeData theme) {
    this._themeData = theme;
    notifyListeners();
  }
}

const primaryLightWhatsApp = Color(0xff5EBC7B);
const secondaryLightWhatsApp = Color(0xff36446A);
const bgColorLightWhatsApp = Color(0xffF9FAFE);
// Color(0xffEFF4F7)
const primaryDarkWhatsApp = Color(0xff00B19B);
const secondaryDarkWhatsApp = Color(0xfff5f5f5);
const bgColorDarkWhatsApp = Color(0xff111E27);

class MyThemes {
  static final darkTheme = ThemeData(
      scaffoldBackgroundColor: bgColorDarkWhatsApp,
      primaryColor: primaryDarkWhatsApp,
      appBarTheme: AppBarTheme(backgroundColor: bgColorDarkWhatsApp),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: primaryDarkWhatsApp,
      ),
      cardColor: Color(0xffFAFBFF).withOpacity(0.96),
      colorScheme: ColorScheme.dark(
          primary: primaryDarkWhatsApp,
          secondary: secondaryDarkWhatsApp,
          background: Color(0xff202D36),
          primaryVariant: primaryDarkWhatsApp,
          secondaryVariant: Color(0xff36446A)
          ),
      fontFamily: 'Konnect');

  static final lightTheme = ThemeData(
      scaffoldBackgroundColor: bgColorLightWhatsApp,
      primaryColor: primaryLightWhatsApp,
      appBarTheme: AppBarTheme(backgroundColor: bgColorLightWhatsApp),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: primaryLightWhatsApp,
      ),
      colorScheme: ColorScheme.light(
          primary: primaryLightWhatsApp,
          secondary: secondaryLightWhatsApp,
          background: Colors.white,
          primaryVariant: Color(0xffEFF4F7),
          secondaryVariant: Color(0xff36446A)),
      cardColor: Color(0xffFAFBFF),
      fontFamily: 'Konnect');
}
