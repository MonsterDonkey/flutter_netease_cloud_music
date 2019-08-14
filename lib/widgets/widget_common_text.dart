import 'package:flutter/material.dart';
import 'package:flutter_music/utils/util_adapt.dart';

class CommonWidget {
  static commonText(String str, double fontSize, bool isBold, [Color color]) =>
      new Center(
        child: new Text(
          str == null ? '' : str,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
          style: new TextStyle(
              fontSize: Adapt.sp(fontSize),
              color: color == null ? Colors.black : color,
              fontWeight: isBold ? FontWeight.bold : FontWeight.normal),
        ),
      );
}
