import 'package:app_flutter_game_cards/controllers/game_controller.dart';
import 'package:app_flutter_game_cards/pages/home_page.dart';
import 'package:app_flutter_game_cards/theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() async {
  runApp(MultiProvider(
    providers: [
      Provider<GameController>(create: (_) => GameController()),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Memory Game Footbal',
      theme: MemoryGameTheme.theme,
      home: const HomePage(),
    );
  }
}
