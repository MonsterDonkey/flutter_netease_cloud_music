import 'package:fluro/fluro.dart';

import 'package:flutter_music/widgets/splash/splash_page.dart';
import 'package:flutter_music/widgets/home/home_page.dart';

var splashHandler = new Handler(handlerFunc: (context, params) {
  return SplashPage();
});

var homeHandler = new Handler(handlerFunc: (context, params) {
  return HomePage();
});
