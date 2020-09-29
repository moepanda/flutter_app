import 'package:flutter/material.dart';
import './tabs/Home.dart';
import './tabs/Settings.dart';
import './tabs/MySelf.dart';

class Tabs extends StatefulWidget {
  final index;
  Tabs({this.index = 0});

  _TabsState createState() => _TabsState(index);
}

class _TabsState extends State<Tabs> {
  int _currentIndex;
  List _pageList = [
    HomePage(),
    MySelfPage(),
    SettingPage(),
  ];

  _TabsState(index) {
    this._currentIndex = index;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Flutter demo'),
      // ),
      body: this._pageList[this._currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('首页')),
          BottomNavigationBarItem(icon: Icon(Icons.person), title: Text('我的')),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), title: Text('设置')),
        ],
        // backgroundColor: ,
        type: BottomNavigationBarType.fixed, //配置底部tabs有多个按钮，否则大于4个有问题
        currentIndex: this._currentIndex,
        onTap: (int index) {
          if (mounted) {
            setState(() {
              _currentIndex = index;
            });
          }
        },
      ),
    );
  }
}
