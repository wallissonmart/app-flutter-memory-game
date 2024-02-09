import 'package:app_flutter_game_cards/constants.dart';
import 'package:app_flutter_game_cards/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class RecordesPage extends StatelessWidget {
  final Modo modo;

  const RecordesPage({Key? key, required this.modo}) : super(key: key);

  getModo() {
    return modo == Modo.normal ? 'Normal' : 'UCL';
  }

  List<Widget> getRecordesList(List<Map<String, int>> recordes) {
    final List<Widget> widgets = [];

    for (final recorde in recordes) {
      final nivel = recorde['nivel'];
      final score = recorde['score'];

      if (nivel != null && score != null) {
        widgets.add(ListTile(
          title: Text('Nível $nivel'),
          trailing: Text(score.toString()),
          tileColor: Colors.grey[900],
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(15)),
          ),
        ));

        widgets.add(const Divider(color: Colors.transparent));
      }
    }

    if (widgets.isEmpty) {
      widgets.add(
        const Center(
          child: Text(
            'Ainda não há recordes!',
            style: TextStyle(fontSize: 28, color: Colors.white),
          ),
        ),
      );
    }

    return widgets;
  }

  @override
  Widget build(BuildContext context) {
    final List<Map<String, int>> recordesTesteNormal = [
      {'nivel': 6, 'score': 10}
    ];

    final List<Map<String, int>> recordesTesteUCL = [];

    return Scaffold(
        appBar: AppBar(
          title: const Text('Recordes'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Observer(
            builder: (context) => Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 36, bottom: 24),
                  child: Center(
                    child: Text(
                      'Modo ${getModo()}',
                      style: const TextStyle(
                          fontSize: 28, color: MemoryGameTheme.color),
                    ),
                  ),
                ),
                ...getRecordesList((modo == Modo.normal
                    ? recordesTesteNormal
                    : recordesTesteUCL)),
              ],
            ),
          ),
        ));
  }
}
