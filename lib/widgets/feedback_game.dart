import 'package:app_flutter_game_cards/constants.dart';
import 'package:app_flutter_game_cards/controllers/game_controller.dart';
import 'package:app_flutter_game_cards/widgets/start_button.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FeedbackGame extends StatelessWidget {
  final Resultado resultado;

  const FeedbackGame({Key? key, required this.resultado}) : super(key: key);

  String getResultado() {
    return resultado == Resultado.aprovado ? 'aprovado' : 'eliminado';
  }

  @override
  Widget build(BuildContext context) {
    final controller = context.read<GameController>();
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 12),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          resultado == Resultado.aprovado
              ? const Text(
                  'Deu bom!',
                  style: TextStyle(fontSize: 30),
                )
              : const Text(
                  'Deu ruim!',
                  style: TextStyle(fontSize: 30),
                ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30),
            child: Image.asset('images/${getResultado()}.jpg'),
          ),
          resultado == Resultado.eliminado
              ? StartButton(
                  title: 'Tentar novamente',
                  color: Colors.white,
                  action: () => {controller.restartGame()},
                )
              : StartButton(
                  title: 'Próximo nível',
                  color: Colors.white,
                  action: () => {controller.nextLevel()},
                ),
        ],
      ),
    );
  }
}
