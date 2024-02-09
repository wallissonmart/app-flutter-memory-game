import 'package:app_flutter_game_cards/constants.dart';
import 'package:app_flutter_game_cards/game_settings.dart';
import 'package:app_flutter_game_cards/models/game_play.dart';
import 'package:app_flutter_game_cards/widgets/card_nivel.dart';
import 'package:flutter/material.dart';

class NivelPage extends StatelessWidget {
  final Modo modo;

  const NivelPage({Key? key, required this.modo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final niveis = GameSettings.niveis
        .map((n) => CardNivel(gamePlay: GamePlay(modo: modo, nivel: n)))
        .toList();
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: const Text('Nível do Jogo'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 48),
        child: GridView.count(
            crossAxisCount: 3,
            mainAxisSpacing: 20,
            crossAxisSpacing: 20,
            padding: const EdgeInsets.all(24),
            children: niveis),
      ),
    );
  }
}
