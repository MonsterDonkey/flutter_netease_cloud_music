import 'package:flutter/material.dart';

class HomePageTopBarModel extends ChangeNotifier {
  int selectedIndex = 0;

  int get selected => selectedIndex;

  void setSelected(int index) {
    selectedIndex = index;

    notifyListeners();
  }
}