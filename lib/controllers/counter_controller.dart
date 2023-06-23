import '../models/counter.dart';

class CounterController {
  int get count => CounterModel.counter;

  void decrement() {
    CounterModel.decrementCounter();
  }

  void increment() {
    CounterModel.incrementCounter();
  }
}
