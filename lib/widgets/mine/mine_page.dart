import 'package:flutter/material.dart';

import 'package:flutter_music/widgets/widget_common.dart';

class MinePage extends StatefulWidget {
  @override
  _MinePageState createState() => _MinePageState();
}

class _MinePageState extends State<MinePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: CommonWidget().commonText("MinePage", 48, false, Colors.black),
    );
  }
}
