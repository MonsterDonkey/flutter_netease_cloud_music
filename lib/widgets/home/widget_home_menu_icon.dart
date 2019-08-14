import 'package:flutter/material.dart';
import 'package:flutter_music/models/home_top_model.dart';
import 'package:flutter_music/utils/util_adapt.dart';
import 'package:flutter_music/widgets/widget_common.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class HomePageLeftMenuIcon extends StatelessWidget {
  Function onPressed;

  HomePageLeftMenuIcon({this.onPressed});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Consumer<HomePageTopModel>(
        builder: (context, menuIcon, _) {
      return new GestureDetector(
        onTap: onPressed,
        child: new Center(
          child: new Stack(
            fit: StackFit.loose,
            children: <Widget>[
              new Center(
                child: new Icon(
                  Icons.menu,
                  color: Colors.black,
                  size: Adapt.px(48.0),
                ),
              ),
              menuIcon.menuRpNum == 0
                  ? new Container()
                  : new Positioned(
                      child: new ClipRRect(
                        borderRadius: new BorderRadius.all(
                            new Radius.circular(Adapt.px(15.0))),
                        child: new Container(
                          decoration: BoxDecoration(color: Colors.red),
                          child: CommonWidget().commonText(
                              menuIcon.menuRpNum.toString(), 20, false, Colors.white),
                        ),
                      ),
                      top: Adapt.px(18.0),
                      right: Adapt.px(14.0),
                      width: Adapt.px(35.0),
                      height: Adapt.px(30.0),
                    )
            ],
          ),
        ),
      );
    });
  }
}
