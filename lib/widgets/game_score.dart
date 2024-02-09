import 'package:app_flutter_game_cards/constants.dart';
import 'package:app_flutter_game_cards/controllers/game_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

class GameScore extends StatelessWidget {
  final Modo modo;
  const GameScore({Key? key, required this.modo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<GameController>(context);

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
                modo == Modo.ucl ? Icons.my_location : Icons.touch_app_rounded),
            const SizedBox(width: 10),
            Observer(
                builder: (_) => Text(controller.score.toString(),
                    style: const TextStyle(fontSize: 25))),
          ],
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(30.0),
          child: Image.asset('images/logo.jpg',
              width: 40, height: 40, fit: BoxFit.cover),
        ),
        TextButton(
          child: const Text('Sair', style: TextStyle(fontSize: 18)),
          onPressed: () => Navigator.pop(context),
        ),
      ],
    );
  }
}
