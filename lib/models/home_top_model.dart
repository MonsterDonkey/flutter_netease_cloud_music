import 'package:flutter/material.dart';

class HomePageTopModel extends ChangeNotifier {
  int _selectedIndex = 0;

  RedPotIndex _redPotIndex = RedPotIndex.NONE;
  int _menuPotNum = 0;

  int get selected => _selectedIndex;
  RedPotIndex get redPot => _redPotIndex;
  int get menuRpNum => _menuPotNum;

  void setMenuPotSize(int size) {
    _menuPotNum = size;

    notifyListeners();
  }

  void setSelected(int index) {
    _selectedIndex = index;

    notifyListeners();
  }

  void showOrHideRedPot(RedPotIndex index) {
    _redPotIndex = index;

    notifyListeners();
  }
}

enum RedPotIndex {
  PAGE_1,
  PAGE_2,
  PAGE_3,
  PAGE_4,
  NONE,
}