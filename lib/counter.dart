import 'package:mobx/mobx.dart';

part 'counter.g.dart';

class Counter = CounterBase with _$Counter;

abstract class CounterBase with Store {
  @observable
  int value = 0;
  @action
  void increment() {
    value++;
  }

  @action
  void reset() {
    value = 0;
  }
}

// Use command below to watch change in this file and let it auto generate code.
// flutter packages pub run build_runner watch
