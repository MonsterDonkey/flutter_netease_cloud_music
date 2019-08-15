import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_music/widgets/splash/splash_page.dart';
import 'package:provider/provider.dart';

import 'models/home_top_model.dart';

import 'package:fluro/fluro.dart';
import 'routes/routes.dart';
import 'routes/application.dart';

void main() {
  Router router = Router();
  Routes.configureRoutes(router);
  Application.router = router;

  runApp(new MusicApp());

  SystemUiOverlayStyle systemUiOverlayStyle =
      SystemUiOverlayStyle(statusBarColor: Colors.transparent);
  SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
}

class MusicApp extends StatefulWidget {
  @override
  _MusicAppState createState() => _MusicAppState();
}

class _MusicAppState extends State<MusicApp> {
  @override
  Widget build(BuildContext context) {
    return new MultiProvider(
        providers: [
          new ChangeNotifierProvider(
              builder: (context) => HomePageTopModel()),
        ],
        child: new MediaQuery(
            data: MediaQueryData.fromWindow(WidgetsBinding.instance.window)
                .copyWith(textScaleFactor: 1),
            child: new MaterialApp(
              home: new SplashPage(),
            )));
  }
}
