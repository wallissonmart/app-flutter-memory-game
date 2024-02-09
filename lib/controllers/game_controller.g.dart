// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$GameController on GameControllerBase, Store {
  late final _$gameCardsAtom =
      Atom(name: 'GameControllerBase.gameCards', context: context);

  @override
  List<GameOpcao> get gameCards {
    _$gameCardsAtom.reportRead();
    return super.gameCards;
  }

  @override
  set gameCards(List<GameOpcao> value) {
    _$gameCardsAtom.reportWrite(value, super.gameCards, () {
      super.gameCards = value;
    });
  }

  late final _$scoreAtom =
      Atom(name: 'GameControllerBase.score', context: context);

  @override
  int get score {
    _$scoreAtom.reportRead();
    return super.score;
  }

  @override
  set score(int value) {
    _$scoreAtom.reportWrite(value, super.score, () {
      super.score = value;
    });
  }

  late final _$venceuAtom =
      Atom(name: 'GameControllerBase.venceu', context: context);

  @override
  bool get venceu {
    _$venceuAtom.reportRead();
    return super.venceu;
  }

  @override
  set venceu(bool value) {
    _$venceuAtom.reportWrite(value, super.venceu, () {
      super.venceu = value;
    });
  }

  late final _$perdeuAtom =
      Atom(name: 'GameControllerBase.perdeu', context: context);

  @override
  bool get perdeu {
    _$perdeuAtom.reportRead();
    return super.perdeu;
  }

  @override
  set perdeu(bool value) {
    _$perdeuAtom.reportWrite(value, super.perdeu, () {
      super.perdeu = value;
    });
  }

  @override
  String toString() {
    return '''
gameCards: ${gameCards},
score: ${score},
venceu: ${venceu},
perdeu: ${perdeu}
    ''';
  }
}
