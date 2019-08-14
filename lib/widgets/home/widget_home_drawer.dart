import 'package:flutter/material.dart';
import 'package:flutter_music/utils/util_adapt.dart';

class HomePageDrawer {
  Widget homeDrawer() {
    return new Drawer(
      child: new ListView(
        children: <Widget>[
          _headerDrawer(),
          new ListTile(
            leading: new CircleAvatar(
              child: new Text('B', style: new TextStyle(color: Colors.black, fontSize: Adapt.sp(34))),
            ),
            title: new Text('Drawer item B', style: new TextStyle(color: Colors.black, fontSize: Adapt.sp(34))),
            subtitle: new Text('Drawer item B subtitle', style: new TextStyle(color: Colors.black54, fontSize: Adapt.sp(30))),
          ),
          new ListTile(
            leading: new CircleAvatar(
              child: new Text('C', style: new TextStyle(color: Colors.black, fontSize: Adapt.sp(34))),
            ),
            title: new Text('Drawer item C', style: new TextStyle(color: Colors.black, fontSize: Adapt.sp(34))),
          ),
          new AboutListTile(
            icon: new CircleAvatar(
              child: new Text('A'),
            ),
            child: new Text('About List Tile',style: new TextStyle(color: Colors.black, fontSize: Adapt.sp(34))),
            applicationName: 'WubsFlutter',
            applicationVersion: 'v1.3.0',
            applicationIcon: new Image.asset(
              'images/cat.jpg',
              width: Adapt.px(64.0),
              height: Adapt.px(64.0),
            ),
            aboutBoxChildren: <Widget>[
              new Text('Box children A', style: new TextStyle(color: Colors.black, fontSize: Adapt.sp(34))),
              new Text('Box children B', style: new TextStyle(color: Colors.black, fontSize: Adapt.sp(34))),
            ],
          )
        ],
      ),
    );
  }

  Widget _headerDrawer() {
    return new UserAccountsDrawerHeader(
      accountName: new Text(
        '大漠孤烟雕满天',
        style: new TextStyle(color: Colors.black, fontSize: Adapt.sp(34)),
      ),
      accountEmail: new Text(
        'wm_donkey@163.com',
        style: new TextStyle(color: Colors.black54, fontSize: Adapt.sp(14)),
      ),
      currentAccountPicture: new CircleAvatar(
        backgroundImage: new AssetImage('images/glgs.jpg'),
      ),
      otherAccountsPictures: <Widget>[
        new CircleAvatar(
          backgroundImage: new AssetImage('images/cat.jpg'),
        )
      ],
      onDetailsPressed: () {
      },
    );
  }
}