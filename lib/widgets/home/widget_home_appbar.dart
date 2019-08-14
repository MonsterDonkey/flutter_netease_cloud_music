import 'package:flutter/material.dart';
import 'package:flutter_music/models/home_app_bar_model.dart';
import 'package:flutter_music/models/home_top_tab_selected_model.dart';
import 'package:flutter_music/utils/util_adapt.dart';
import 'package:flutter_music/utils/util_strs.dart';
import 'package:flutter_music/widgets/widget_common_text.dart';
import 'package:provider/provider.dart';

import 'widget_home_menu_icon.dart';

class HomeAppBar {
  appBar() => new AppBar(
    titleSpacing: 0.0,
        leading: _leading(),
        title: HomePageTopBar(),
        actions: _homeAction(),
      );

  _leading() => Builder(
        builder: (context) => new HomePageLeftMenuIcon(
          onPressed: () {
            Scaffold.of(context).openDrawer();
            Provider.of<HomePageLeftMenuIconModel>(context).setCount(1);
          },
        ),
      );

  _homeAction() => <Widget>[
        new Padding(
          padding: EdgeInsets.only(right: Adapt.px(24.0)),
          child: Icon(
            Icons.search,
            color: Colors.black,
          ),
        )
      ];
}

class HomePageTopBar extends StatefulWidget {
  @override
  _HomePageTopBarState createState() => _HomePageTopBarState();
}

class _HomePageTopBarState extends State<HomePageTopBar>
    with SingleTickerProviderStateMixin {
  TabController tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController =
        new TabController(length: Strs.HOME_TABLE.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return new Consumer<HomePageTopBarModel>(builder: (context, counter, _) {
      return new TabBar(
        tabs: _renderTab(context),
        controller: tabController,
        isScrollable: false,
        indicator: UnderlineTabIndicator(),
        onTap: (index) {
          Provider.of<HomePageTopBarModel>(context).setSelected(index);
          tabController.animateTo(index);
        },
      );
    });
  }

  _renderTab(context) {
    List<Widget> wList = new List();

    for (int i = 0; i < Strs.HOME_TABLE.length; i++) {
      wList.add(new Container(
        padding: new EdgeInsets.only(top: Adapt.px(5.0)),
        child: CommonWidget.commonText(
            Strs.HOME_TABLE[i],
            Provider.of<HomePageTopBarModel>(context).selectedIndex == i
                ? 34.0
                : 32.0,
            Provider.of<HomePageTopBarModel>(context).selectedIndex == i,
            Provider.of<HomePageTopBarModel>(context).selectedIndex == i
                ? Colors.black
                : Colors.black54),
      ));
    }

    return wList;
  }

  @override
  void dispose() {
    // TODO: implement dispose
    tabController.dispose();
    super.dispose();
  }
}
