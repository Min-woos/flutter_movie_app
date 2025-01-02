import 'package:flutter/material.dart';
import 'package:movie_app/presentation/pages/home/home_page.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'presentation/pages/home/home_page_view_model.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Movie App',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent,
        ),
        scaffoldBackgroundColor: Colors.black,
      ),
      home: HomePage(),
    );
  }
}