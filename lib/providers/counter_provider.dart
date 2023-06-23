import 'package:counter_project/controllers/counter_controller.dart';
import 'package:flutter/cupertino.dart';

class CounterProvider extends ChangeNotifier {
  int _count = 0;
  CounterController controller = CounterController();

  void increment() {
    controller.increment();
    _count = controller.count;
    notifyListeners();
  }

  void decrement() {
    controller.increment();
    _count = controller.count;
    notifyListeners();
  }

  int get count => _count;
}
