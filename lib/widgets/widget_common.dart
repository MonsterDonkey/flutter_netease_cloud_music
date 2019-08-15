import 'package:flutter/material.dart';
import 'package:flutter_music/utils/util_adapt.dart';

class CommonWidget {
  commonText(String str, double fontSize, bool isBold, [Color color]) =>
      new Center(
        child: new Text(
          str == null ? '' : str,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
          style: new TextStyle(
              decoration: TextDecoration.none,
              fontSize: Adapt.sp(fontSize),
              color: color == null ? Colors.black : color,
              fontWeight: isBold ? FontWeight.bold : FontWeight.normal),
        ),
      );

  commonTextWithRedPot(
          String str, double fontSize, bool isBold, bool isShowRedPot,
          [Color color]) =>
      new Center(
          child: new Stack(
        fit: StackFit.loose,
        children: <Widget>[
          new Padding(
            child: commonText(str, fontSize, isBold, color),
            padding: EdgeInsets.only(right: Adapt.px(10)),
          ),
          Positioned(
            child: isShowRedPot
                ? new CircleAvatar(
                    radius: Adapt.px(8),
                    backgroundColor: Color.fromARGB(255, 198, 47, 47),
                  )
                : new Container(),
            top: Adapt.px(25),
            right: Adapt.px(25),
          )
        ],
      ));
}
