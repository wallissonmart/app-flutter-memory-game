import 'package:app_flutter_game_cards/theme.dart';
import 'package:app_flutter_game_cards/widgets/logo.dart';
import 'package:app_flutter_game_cards/widgets/start_button.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Logo(),
          StartButton(
              title: "Modo normal", color: MemoryGameTheme.color, action: () {})
        ],
      ),
    );
  }
}
