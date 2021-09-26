import 'package:flutter/cupertino.dart';

class Provider2 extends ChangeNotifier {
  int value = 0;

  void increment() {
    value = value + 1;
    notifyListeners();
  }

  void decrement() {
    value = value - 1;
    notifyListeners();
  }
}
