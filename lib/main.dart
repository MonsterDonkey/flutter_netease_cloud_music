import 'package:flutter/material.dart';

void main() => runApp(new PlaceHolder());

class PlaceHolder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(leading: new Icon(Icons.add),),
        body: new Container(
          child: new Center(
            child: new Text('Start'),
          ),
        ),
      ),
    );
  }
}
