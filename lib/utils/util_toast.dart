import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'util_adapt.dart';

class ToastN {
  static show(String str) => Fluttertoast.showToast(
      msg: str == null ? '' : str,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.CENTER,
      timeInSecForIos: 1,
      backgroundColor: Colors.black38,
      textColor: Colors.white,
      fontSize: Adapt.sp(30.0));
}
