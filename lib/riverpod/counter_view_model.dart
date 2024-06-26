import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final stateProvider = AutoDisposeChangeNotifierProvider<CounterViewModel>(
  (ref) => CounterViewModel(),
);

class CounterViewModel extends ChangeNotifier {
  int _counter = 0;
  int get counter => _counter;

  void add() {
    _counter++;
    notifyListeners();
  }
}
