
import 'package:app_flutter_game_cards/constants.dart';
import 'package:app_flutter_game_cards/controllers/game_controller.dart';
import 'package:app_flutter_game_cards/game_settings.dart';
import 'package:app_flutter_game_cards/models/game_opcao.dart';
import 'package:app_flutter_game_cards/models/game_play.dart';
import 'package:app_flutter_game_cards/widgets/card_game.dart';
import 'package:app_flutter_game_cards/widgets/feedback_game.dart';
import 'package:app_flutter_game_cards/widgets/game_score.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

class GamePage extends StatelessWidget {
  final GamePlay gamePlay;

  const GamePage({Key? key, required this.gamePlay}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<GameController>(context);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: GameScore(modo: gamePlay.modo),
      ),
      body: Observer(
        builder: (_) {
          if (controller.venceu) {
            return const FeedbackGame(resultado: Resultado.aprovado);
          } else if (controller.perdeu) {
            return const FeedbackGame(resultado: Resultado.eliminado);
          } else {
            return Center(
              child: GridView.count(
                shrinkWrap: true,
                crossAxisCount: GameSettings.gameBoardAxisCount(gamePlay.nivel),
                mainAxisSpacing: 15,
                crossAxisSpacing: 15,
                padding: const EdgeInsets.all(24),
                children: controller.gameCards
                    .map(
                      (GameOpcao go) =>
                          CardGame(modo: gamePlay.modo, gameOpcao: go),
                    )
                    .toList(),
              ),
            );
          }
        },
      ),
    );
  }
}
