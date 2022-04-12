import 'package:flutter/material.dart';

class ExampleProvider extends ChangeNotifier {
  String? _data;

  void setDataString(String data) {
    _data = data;
    notifyListeners();
  }

  String? get getDataString => _data;
}
