import 'package:app_flutter_game_cards/pages/home_page.dart';
import 'package:app_flutter_game_cards/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Memory Game',
      theme: MemoryGameTheme.theme,
      home: const HomePage(),
    );
  }
}
