import 'package:bookcade/splash.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(themeMode: ThemeMode.dark,
      home: SplashView(),
    );
  }
}
