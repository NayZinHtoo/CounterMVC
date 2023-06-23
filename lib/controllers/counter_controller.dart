import '../models/counter_model.dart';

class CounterController {
  int get count => CounterModel.counter;

  void decrement() {
    CounterModel.decrementCounter();
  }

  void increment() {
    CounterModel.incrementCounter();
  }
}
