import 'package:flutter/cupertino.dart';
import '../models/counter.dart';

class CounterProvider extends ChangeNotifier {
  int _count = 0;
  //void update() => notifyListeners();

  void update(int count) {
    _count = count;
    notifyListeners();
  }

  int get count => _count;
}
