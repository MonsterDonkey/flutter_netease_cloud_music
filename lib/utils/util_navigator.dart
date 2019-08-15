import 'package:flutter_music/routes/application.dart';
import 'package:flutter/material.dart';
import 'package:flutter_music/routes/routes.dart';

class NavigatorUtils {
  static goBack(context) => Application.router.pop(context);

  static goBackWithParams(context, result) => Navigator.pop(context, result);

  static goHomePage(context) => Application.router.navigateTo(context, Routes.home, replace: true);
}