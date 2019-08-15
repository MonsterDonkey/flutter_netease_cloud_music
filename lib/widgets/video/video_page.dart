
import 'package:flutter_music/widgets/widget_common.dart';

import 'package:flutter/material.dart';

class VideoPage extends StatefulWidget {
  @override
  _VideoPageState createState() => _VideoPageState();
}

class _VideoPageState extends State<VideoPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: CommonWidget().commonText("VideoPage", 48, false, Colors.black),
    );
  }
}
