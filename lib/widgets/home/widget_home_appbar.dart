import 'package:flutter/material.dart';
import 'package:flutter_music/models/home_top_model.dart';
import 'package:flutter_music/utils/util_adapt.dart';
import 'package:flutter_music/utils/util_strs.dart';
import 'package:flutter_music/widgets/widget_common.dart';
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
            Provider.of<HomePageTopModel>(context).setMenuPotSize(0);
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
    return new Consumer<HomePageTopModel>(builder: (context, counter, _) {
      return new Center(
        child: new TabBar(
          labelPadding: EdgeInsets.all(0.0),
          tabs: _renderTab(context),
          controller: tabController,
          isScrollable: false,
          indicator: UnderlineTabIndicator(),
          onTap: (index) {
            Provider.of<HomePageTopModel>(context).setSelected(index);
            if (Provider.of<HomePageTopModel>(context).redPot.index == index)
              Provider.of<HomePageTopModel>(context).showOrHideRedPot(RedPotIndex.NONE);

            tabController.animateTo(index);
          },
        ),
      );
    });
  }

  _renderTab(context) {
    List<Widget> wList = new List();

    for (int i = 0; i < Strs.HOME_TABLE.length; i++) {
      wList.add(new Container(
        padding: const EdgeInsets.all(0.0),
        child: CommonWidget().commonTextWithRedPot(
            Strs.HOME_TABLE[i],
            Provider.of<HomePageTopModel>(context).selected == i
                ? 34.0
                : 32.0,
            Provider.of<HomePageTopModel>(context).selected == i,
            Provider.of<HomePageTopModel>(context).redPot.index == i,
            Provider.of<HomePageTopModel>(context).selected == i
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
