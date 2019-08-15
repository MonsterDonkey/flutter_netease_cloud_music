import 'package:flutter/material.dart';
import 'package:flutter_music/widgets/widget_common.dart';

class FindPage extends StatefulWidget {
  @override
  _FindPageState createState() => _FindPageState();
}

class _FindPageState extends State<FindPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: CommonWidget().commonText("FindPage", 48, false, Colors.black),
    );
  }
}
