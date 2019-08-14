import 'package:flutter/material.dart';
import 'package:flutter_music/models/home_app_bar_model.dart';
import 'package:flutter_music/utils/util_adapt.dart';
import 'package:flutter_music/widgets/widget_common_text.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class HomePageLeftMenuIcon extends StatelessWidget {
  Function onPressed;

  HomePageLeftMenuIcon({this.onPressed});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Consumer<HomePageLeftMenuIconModel>(
        builder: (context, menuIcon, _) {
      return new GestureDetector(
        onTap: onPressed,
        child: new Container(
          child: new Stack(
            fit: StackFit.loose,
            children: <Widget>[
              new Center(
                child: new Icon(
                  Icons.menu,
                  color: Colors.black54,
                  size: Adapt.px(56.0),
                ),
              ),
              menuIcon.count == 0
                  ? new Container()
                  : new Positioned(
                      child: new ClipRRect(
                        borderRadius: new BorderRadius.all(
                            new Radius.circular(Adapt.px(15.0))),
                        child: new Container(
                          decoration: BoxDecoration(color: Colors.redAccent),
                          child: CommonWidget.commonText(
                              menuIcon.count.toString(), 20, false, Colors.white),
                        ),
                      ),
                      top: Adapt.px(18.0),
                      right: Adapt.px(10.0),
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
