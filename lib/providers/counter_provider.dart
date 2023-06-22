import 'package:flutter/cupertino.dart';

class CounterProvider extends ChangeNotifier {
  void update() => notifyListeners();
}