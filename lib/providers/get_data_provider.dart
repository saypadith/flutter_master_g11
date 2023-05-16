import 'package:flutter/material.dart';

class GetDataProvider extends ChangeNotifier {
  late int counter;

  increment() {
    counter++;
    notifyListeners();
  }
}
