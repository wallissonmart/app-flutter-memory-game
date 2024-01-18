import 'package:app_flutter_game_cards/constants.dart';
import 'package:app_flutter_game_cards/pages/nivel_page.dart';
import 'package:app_flutter_game_cards/theme.dart';
import 'package:app_flutter_game_cards/widgets/logo.dart';
import 'package:app_flutter_game_cards/widgets/recordes.dart';
import 'package:app_flutter_game_cards/widgets/start_button.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  selecionarNivel(Modo modo, BuildContext context) async {
    await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => NivelPage(modo: modo),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Logo(),
          StartButton(
              title: "Modo normal",
              color: Colors.white,
              action: () => selecionarNivel(Modo.normal, context)),
          StartButton(
              title: "Modo UCL",
              color: MemoryGameTheme.color,
              action: () => selecionarNivel(Modo.ucl, context)),
          const Recordes(),
        ],
      ),
    ));
  }
}
