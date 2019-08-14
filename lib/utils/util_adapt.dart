import 'dart:ui';

import 'package:flutter/material.dart';

import 'util_cons.dart';

class Adapt {
  static MediaQueryData mediaQueryData = MediaQueryData.fromWindow(window);

  static double _width = mediaQueryData.size.width;
  static double _height = mediaQueryData.size.height;
  static double _topBarHeight = mediaQueryData.padding.top;
  static double _bottomBarHeight = mediaQueryData.padding.bottom;
  static double _pixelRatio = mediaQueryData.devicePixelRatio;
  static double _textScaleFactor = mediaQueryData.textScaleFactor;

  static var _ratio;

  static final int defaultWidth = Cons.DEFAULT_UED_WIDTH;

  static _init(int number) {
    int uiWidth = number is int ? number : defaultWidth;
    _ratio = _width / uiWidth;
  }

  static px(number) {
    if (!(_ratio is double || _ratio is int)) {
      _init(defaultWidth);
    }
    return number * _ratio;
  }


  static sp(double fontSize) => px(fontSize) / _textScaleFactor;

  static screenW() => _width;

  static screenH() => _height;

  static padTopH() => _topBarHeight;

  static padBotH() => _bottomBarHeight;

  static px_1() => 1 / _pixelRatio;

  static px_2() => 2 / _pixelRatio;

  static px_3() => 3 / _pixelRatio;

  static px_4() => 4 / _pixelRatio;

  static px_5() => 5 / _pixelRatio;

  static px_6() => 6 / _pixelRatio;

  static px_7() => 7 / _pixelRatio;

  static px_8() => 8 / _pixelRatio;

  static px_9() => 9 / _pixelRatio;

  static px_10() => 10 / _pixelRatio;

  static px_11() => 11 / _pixelRatio;

  static px_12() => 12 / _pixelRatio;

  static px_13() => 13 / _pixelRatio;

  static px_14() => 14 / _pixelRatio;

  static px_15() => 15 / _pixelRatio;

  static px_16() => 16 / _pixelRatio;

  static px_17() => 17 / _pixelRatio;

  static px_18() => 18 / _pixelRatio;

  static px_19() => 19 / _pixelRatio;

  static px_20() => 20 / _pixelRatio;

  static px_21() => 21 / _pixelRatio;

  static px_22() => 22 / _pixelRatio;

  static px_23() => 23 / _pixelRatio;

  static px_24() => 24 / _pixelRatio;

  static px_25() => 25 / _pixelRatio;

  static px_26() => 26 / _pixelRatio;

  static px_27() => 27 / _pixelRatio;

  static px_28() => 28 / _pixelRatio;

  static px_29() => 29 / _pixelRatio;

  static px_30() => 30 / _pixelRatio;

  static px_31() => 31 / _pixelRatio;

  static px_32() => 32 / _pixelRatio;

  static px_33() => 33 / _pixelRatio;

  static px_34() => 34 / _pixelRatio;

  static px_35() => 35 / _pixelRatio;

  static px_36() => 36 / _pixelRatio;

  static px_37() => 37 / _pixelRatio;

  static px_38() => 38 / _pixelRatio;

  static px_39() => 39 / _pixelRatio;

  static px_40() => 40 / _pixelRatio;

  static px_41() => 41 / _pixelRatio;

  static px_42() => 42 / _pixelRatio;

  static px_43() => 43 / _pixelRatio;

  static px_44() => 44 / _pixelRatio;

  static px_45() => 45 / _pixelRatio;

  static px_46() => 46 / _pixelRatio;

  static px_47() => 47 / _pixelRatio;

  static px_48() => 48 / _pixelRatio;

  static px_49() => 49 / _pixelRatio;

  static px_50() => 50 / _pixelRatio;

  static px_64() => 64 / _pixelRatio;

  static px_80() => 80 / _pixelRatio;

  static px_96() => 95 / _pixelRatio;

  static px_112() => 112 / _pixelRatio;

  static px_128() => 128 / _pixelRatio;

  static px_144() => 144 / _pixelRatio;

  static px_160() => 160 / _pixelRatio;

  static px_176() => 176 / _pixelRatio;

  static px_192() => 192 / _pixelRatio;

  static px_200() => 200 / _pixelRatio;

  static px_218() => 218 / _pixelRatio;

  static px_250() => 250 / _pixelRatio;

  static px_300() => 300 / _pixelRatio;

  static px_350() => 350 / _pixelRatio;

  static px_400() => 400 / _pixelRatio;

  static px_450() => 450 / _pixelRatio;

  static px_500() => 500 / _pixelRatio;

  static px_550() => 550 / _pixelRatio;

  static px_600() => 600 / _pixelRatio;

  static px_650() => 650 / _pixelRatio;

  static px_700() => 700 / _pixelRatio;

  static px_750() => 750 / _pixelRatio;

  static px_800() => 800 / _pixelRatio;

  static px_850() => 850 / _pixelRatio;

  static px_900() => 900 / _pixelRatio;

  static px_950() => 950 / _pixelRatio;

  static px_1000() => 1000 / _pixelRatio;
}
