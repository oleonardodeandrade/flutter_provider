import 'package:flutter/widgets.dart';

class IncController extends ChangeNotifier {
  int _number = 0;

  int get number => _number;

  incNumber() {
    _number++;
    notifyListeners();
  }
}
