import 'package:app_flutter_game_cards/theme.dart';
import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(30.0),
            child: Image.asset('images/logo.jpg',
                width: 80, height: 80, fit: BoxFit.cover),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 40),
          child: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              text: 'Jogo da Memória ',
              style: DefaultTextStyle.of(context).style.copyWith(fontSize: 30),
              children: const [
                TextSpan(
                  text: 'Futebol',
                  style: TextStyle(color: MemoryGameTheme.color),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
