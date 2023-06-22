import 'package:flutter/cupertino.dart';
import '../models/counter.dart';

class CounterProvider extends ChangeNotifier {
  
  void update() => notifyListeners();

  int get count => CounterModel.counter;
}
