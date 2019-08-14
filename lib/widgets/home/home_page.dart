import 'package:flutter/material.dart';
import 'package:flutter_music/utils/util_strs.dart';
import 'package:flutter_music/widgets/home/widget_home_drawer.dart';

import 'widget_home_appbar.dart';

import 'package:provider/provider.dart';
import 'package:flutter_music/models/home_top_model.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Future.delayed(new Duration(seconds: 10), (){
      Provider.of<HomePageTopModel>(context).showOrHideRedPot(RedPotIndex.PAGE_3);
      Provider.of<HomePageTopModel>(context).setMenuPotSize(15);
    });
  }

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
          body: new FlatButton(onPressed: (){

          }, child: new Text('+')),
        ));
  }
}
