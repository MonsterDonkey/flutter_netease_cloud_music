import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_music/utils/util_adapt.dart';
import 'package:flutter_music/utils/util_navigator.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    // TODO: implement initState

    // ignore: missing_return
    Future.delayed(Duration(seconds: 2), () {
      NavigatorUtils.goHomePage(context);
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Container(
          color: Colors.red,
          child: new Center(
              child: new Padding(
                  padding: new EdgeInsets.only(top: Adapt.px(450)),
                  child: new Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      new Text(
                        "音乐",
                        style: new TextStyle(
                            fontSize: Adapt.px(64),
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic),
                      ),
                      new Text(
                        "奔向自由的向往",
                        style: new TextStyle(
                            fontSize: Adapt.px(64),
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic),
                      )
                    ],
                  )))),
    );
  }
}
