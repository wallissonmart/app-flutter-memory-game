import 'dart:math';

import 'package:app_flutter_game_cards/constants.dart';
import 'package:app_flutter_game_cards/widgets/card_game.dart';
import 'package:flutter/material.dart';

class GamePage extends StatelessWidget {
  final Modo modo;
  final int nivel;

  const GamePage({
    Key? key,
    required this.modo,
    required this.nivel,
  }) : super(key: key);

  getAxisCount() {
    if (nivel < 10) {
      return 2;
    } else if (nivel == 10 || nivel == 12 || nivel == 18) {
      return 3;
    } else {
      return 4;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(modo == Modo.ucl
                    ? Icons.my_location
                    : Icons.touch_app_rounded),
                const SizedBox(width: 10),
                const Text('18', style: TextStyle(fontSize: 25)),
              ],
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(30.0),
              child: Image.asset('images/logo.jpg',
                  width: 40, height: 40, fit: BoxFit.cover),
            ),
            TextButton(
              child: const Text(
                'Sair',
                style: TextStyle(fontSize: 18),
              ),
              onPressed: () => Navigator.pop(context),
            ),
          ],
        ),
      ),
      body: Center(
        child: GridView.count(
          shrinkWrap: true,
          crossAxisCount: getAxisCount(),
          mainAxisSpacing: 15,
          crossAxisSpacing: 15,
          padding: const EdgeInsets.all(24),
          children: List.generate(
            nivel,
            (index) => CardGame(
              modo: modo,
              opcao: Random().nextInt(6),
            ),
          ),
        ),
      ),
    );
  }
}
