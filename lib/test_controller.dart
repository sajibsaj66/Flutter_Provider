import 'package:flutter/cupertino.dart';

class TestController extends ChangeNotifier {
  final textController = TextEditingController();

  String get name => textController.text;

  void nameChangeMethod() {
    textController.text;
    notifyListeners();
  }
}
