import '../providers/counter_provider.dart';
import '../models/counter.dart';

class CounterController extends CounterProvider {

  int get count =>CounterModel.counter;

  void decrement() {
    CounterModel.decrementCounter();
    update();
  }

  void increment() {
    CounterModel.incrementCounter();
    update();
  }
}
