import 'package:flutter/material.dart';

import 'package:flutter_music/widgets/widget_common.dart';

class DiscoveryPage extends StatefulWidget {
  @override
  _DiscoveryPageState createState() => _DiscoveryPageState();
}

class _DiscoveryPageState extends State<DiscoveryPage> {
  @override
  Widget build(BuildContext context) {
    return new Container(
      child: CommonWidget().commonText("DiscoveryPage", 48, false, Colors.black),
    );
  }
}
