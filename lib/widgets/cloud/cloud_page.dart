import 'package:flutter/material.dart';
import 'package:flutter_music/widgets/widget_common.dart';

class CloudPage extends StatefulWidget {
  @override
  _CloudPageState createState() => _CloudPageState();
}

class _CloudPageState extends State<CloudPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: CommonWidget().commonText("CloudPage", 48, false, Colors.black),
    );
  }
}
