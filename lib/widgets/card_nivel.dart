import 'package:app_flutter_game_cards/constants.dart';
import 'package:app_flutter_game_cards/pages/game_page.dart';
import 'package:app_flutter_game_cards/theme.dart';
import 'package:flutter/material.dart';

class CardNivel extends StatelessWidget {
  final Modo modo;
  final int nivel;

  const CardNivel({
    Key? key,
    required this.modo,
    required this.nivel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          fullscreenDialog: true,
          builder: (BuildContext context) => GamePage(modo: modo, nivel: nivel),
        ),
      ),
      borderRadius: const BorderRadius.all(Radius.circular(10)),
      child: Container(
        width: 90,
        height: 90,
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          border: Border.all(
            color: modo == Modo.normal ? Colors.white : MemoryGameTheme.color,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          color: modo == Modo.normal
              ? Colors.transparent
              : MemoryGameTheme.color.withOpacity(.6),
        ),
        child: Center(
          child: Text(nivel.toString(), style: const TextStyle(fontSize: 30)),
        ),
      ),
    );
  }
}
