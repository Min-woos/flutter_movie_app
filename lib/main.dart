import 'package:flutter/material.dart';
import 'package:movie_app/homepage/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  get lightTheme => null;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '기차 예매',
      themeMode: ThemeMode.light,
      theme: lightTheme,
      home: HomePage(),
    );
  }
}