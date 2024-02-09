import 'package:app_flutter_game_cards/constants.dart';
import 'package:app_flutter_game_cards/controllers/game_controller.dart';
import 'package:app_flutter_game_cards/models/game_play.dart';
import 'package:app_flutter_game_cards/pages/game_page.dart';
import 'package:app_flutter_game_cards/theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CardNivel extends StatelessWidget {
  final GamePlay gamePlay;

  const CardNivel({Key? key, required this.gamePlay}) : super(key: key);

  startGame(BuildContext context) {
    context.read<GameController>().startGame(gamePlay: gamePlay);

    Navigator.push(
      context,
      MaterialPageRoute(
        fullscreenDialog: true,
        builder: (BuildContext context) => GamePage(gamePlay: gamePlay),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => startGame(context),
      borderRadius: const BorderRadius.all(Radius.circular(10)),
      child: Container(
        width: 90,
        height: 90,
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          border: Border.all(
            color: gamePlay.modo == Modo.normal
                ? Colors.white
                : MemoryGameTheme.color,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          color: gamePlay.modo == Modo.normal
              ? Colors.transparent
              : MemoryGameTheme.color.withOpacity(.6),
        ),
        child: Center(
          child: Text(gamePlay.nivel.toString(),
              style: const TextStyle(fontSize: 30)),
        ),
      ),
    );
  }
}
