import 'package:flutter/material.dart';
import 'package:github/src/pages/whatsapp-redesign/bloc/theme_bloc.dart';
import 'package:github/src/pages/whatsapp-redesign/home-whatsapp/whatsapp.dart';

const kPaddignWhatsApp = 20.0;

class WhatsAppHome extends StatelessWidget {
  final themeBloc = ThemeBloc(MyThemes.darkTheme);

  @override
  Widget build(BuildContext context) {
    return ThemeInheritedWidget(
      themeBloc: themeBloc,
      child: AnimatedBuilder(
        animation: themeBloc,
        builder: (context, _) {
          final themeProvider = ThemeInheritedWidget.of(context)!.themeBloc;
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: themeProvider!.getTheme(),
            home: WhatsApp(),
          );
        },
      ),
    );
  }
}

class ThemeInheritedWidget extends InheritedWidget {
  final Widget child;
  final ThemeBloc? themeBloc;

  ThemeInheritedWidget({Key? key, required this.child, this.themeBloc})
      : super(key: key, child: child);

  static ThemeInheritedWidget? of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType();

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) => true;
}
