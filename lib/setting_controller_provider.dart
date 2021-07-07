import 'package:flutter/cupertino.dart';

class SettingController extends ChangeNotifier {
  int _sizeCount = 10;
  int get sizeCounter => _sizeCount;

  void increment() {
    _sizeCount++;
    notifyListeners();
  }

  void decrement() {
    _sizeCount--;
    notifyListeners();
  }

  // void set decrement(sizeCounter) {
  //   _sizeCount--;
  //   notifyListeners();
  // }
}
