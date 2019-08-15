import 'package:flutter/material.dart';
import 'package:flutter_music/models/home_top_model.dart';
import 'package:flutter_music/widgets/cloud/cloud_page.dart';
import 'package:flutter_music/widgets/discovery/discovery_page.dart';
import 'package:flutter_music/widgets/mine/mine_page.dart';
import 'package:flutter_music/widgets/video/video_page.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class HomeBody extends StatefulWidget {
  PageController pageController;

  HomeBody({Key key, this.pageController}) : super(key: key);

  @override
  _HomeBodyState createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  List<Widget> homePageViews = [];

  @override
  void initState() {
    super.initState();

    if (homePageViews.length == 0) {
      homePageViews.add(new MinePage());
      homePageViews.add(new DiscoveryPage());
      homePageViews.add(new CloudPage());
      homePageViews.add(new VideoPage());
    }
  }

  @override
  Widget build(BuildContext context) {
    return PageView(
      children: homePageViews,
      controller: widget.pageController,
      onPageChanged: (index) {
        Provider.of<HomePageTopModel>(context).setSelected(index);
      },
    );
  }
}
