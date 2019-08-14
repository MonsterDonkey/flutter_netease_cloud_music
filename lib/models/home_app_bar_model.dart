import 'package:flutter/material.dart';

class HomePageLeftMenuIconModel extends ChangeNotifier {
  int _count = 0;

  int get count => _count;

  void setCount(int c) {
    _count = c;
    notifyListeners();
  }
}



