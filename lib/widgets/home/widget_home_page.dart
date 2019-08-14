import 'package:flutter/material.dart';
import 'package:flutter_music/utils/util_strs.dart';
import 'package:flutter_music/widgets/home/widget_home_drawer.dart';

import 'widget_home_appbar.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        debugShowCheckedModeBanner: false,
        title: Strs.BACK_GROUND_TITLE,
        theme: new ThemeData(
          primaryColor: Colors.white,
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
        ),
        home: new Scaffold(
          backgroundColor: Colors.white,
          drawer: HomePageDrawer().homeDrawer(),
          appBar: HomeAppBar().appBar(),
          body: new Row(),
        ));
  }
}
