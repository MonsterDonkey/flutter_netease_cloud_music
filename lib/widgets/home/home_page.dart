import 'package:flutter/material.dart';
import 'package:flutter_music/models/home_top_model.dart';
import 'package:flutter_music/utils/util_strs.dart';
import 'package:flutter_music/widgets/home/widget_home_drawer.dart';
import 'package:provider/provider.dart';

import 'widget_home_appbar.dart';
import 'package:flutter_music/utils/util_toast.dart';
import 'widget_home_body.dart';

import 'dart:io';



class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int preTime = 0;
  PageController _pageController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    if (_pageController == null)
      _pageController = new PageController();
    Future.delayed(new Duration(seconds: 10), () {
      Provider.of<HomePageTopModel>(context)
          .showOrHideRedPot(RedPotIndex.PAGE_3);
      Provider.of<HomePageTopModel>(context).setMenuPotSize(15);
    });
  }

  @override
  Widget build(BuildContext context) {
    return new WillPopScope(
        child: new MaterialApp(
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
              appBar: HomeAppBar().appBar(_pageController),
              body: HomeBody(pageController: _pageController,),
            )),
        onWillPop: () {
          int currentTime = DateTime.now().millisecondsSinceEpoch;
          if (currentTime - preTime < 1000 || preTime == 0) {
            preTime = currentTime;
            ToastN.show("再按一次退出");
            return;
          }

          exit(0);
          return;
        });
  }
}
