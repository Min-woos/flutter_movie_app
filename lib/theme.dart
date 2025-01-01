import 'package:flutter/material.dart';
import 'package:movie_app/custom_theme.dart';

final darkTheme = _theme(Brightness.dark, DarkTheme());

ThemeData _theme(Brightness brightness, AppThemeExtension ext) {
  return ThemeData(
      brightness: brightness,
      useMaterial3: true,
      scaffoldBackgroundColor: ext.background,
      colorScheme:
          ColorScheme.fromSeed(brightness: brightness, seedColor: ext.main),
      extensions: [ext],
      textTheme: TextTheme(
        // bodyLarge: TextStyle(fontSize: 20),
        bodyMedium: TextStyle(
            color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
        // bodySmall: TextStyle(fontSize: 20),
      ));
}

extension BuildContextExtension on BuildContext {
  ThemeData get theme => Theme.of(this);
  AppThemeExtension get appColor => theme.extension<AppThemeExtension>()!;
}

// context.theme
// context.appColor