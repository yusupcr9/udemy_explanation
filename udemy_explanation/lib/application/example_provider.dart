import 'package:flutter/foundation.dart';

class ExampleProvider extends ChangeNotifier {
  late String _data;

  void setDataString(String data) {
    _data = data;
    notifyListeners();
  }

  String get getDataString => _data;
}
