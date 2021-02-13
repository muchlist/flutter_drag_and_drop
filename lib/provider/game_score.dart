import 'dart:math';

import 'package:flutter/cupertino.dart';

class GameScore with ChangeNotifier {
  int _score = 0;
  int _turn = 0;
  var _currentValue = _random();

  int get score => _score;
  int get turn => _turn;
  int get currentValue => _currentValue;

  static int _random() => Random().nextInt(100) + 1;

  void addPoint(int pts) {
    _score += pts;
    _turn++;
    _currentValue = _random();
    notifyListeners();
  }
}
