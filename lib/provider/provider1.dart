import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

class Provider1 extends ChangeNotifier {
  int fontSize = 30;

  void fontSizeIncrease() {
    fontSize++;
    notifyListeners();
  }

  void fontSizeDecrease() {
    fontSize--;
    notifyListeners();
  }
}
