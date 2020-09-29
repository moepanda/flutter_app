import 'package:flutter/material.dart';
import '../ItemList.dart';

// void main() {
//   runApp(My());
// }

class My extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyState();
  }
}

class _MyState extends State<My> {
  var currentIndex = 0;
  final List<BottomNavigationBarItem> bottomTabs = [
    //图标列表
    BottomNavigationBarItem(
      // backgroundColor: Colors.white70,
      icon: Image.asset("assets/images/home_nor.png", height: 30),
      title: Text(
        '首页',
      ),
    ),
    BottomNavigationBarItem(
      // backgroundColor: Colors.white70,
      icon: Image.asset("assets/images/profile_nor.png", height: 30),
      title: Text(
        '我的',
      ),
    ),
    BottomNavigationBarItem(
      // backgroundColor: Colors.white70,
      // icon: Icon(
      //   Icons.store,
      // ),
      icon: Image.asset("assets/images/setting_nor.png", height: 30),
      title: Text(
        '设置',
      ),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: _myContent(),
        bottomNavigationBar: BottomNavigationBar(
          // backgroundColor: Colors.green,
          items: bottomTabs,
          currentIndex: currentIndex,
          onTap: (index) {
            if (mounted) {
              setState(() {
                currentIndex = index;
              });
            }
          },
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }

  //自定义方法
  List<Widget> _getData() {
    var tempList = itemList.map((value) {
      return ListTile(
        leading: Image.asset(value["leading"]),
        title: Text(value["title"]),
        trailing: Image.asset(value["trailing"]),
        dense: true,
      );
    });
    return tempList.toList();
  }

  _myContent() {
    return Column(
      children: <Widget>[
        Container(
          width: double.maxFinite,
          height: 260,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/profile_bg.png"),
                fit: BoxFit.cover),
          ),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Container(
                    height: 40,
                    width: 340,
                    padding: EdgeInsets.fromLTRB(0, 20, 10, 0),
                    alignment: Alignment.centerRight,
                    child: Text(''),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Container(
                    // height: 100,
                    // width: double.maxFinite,
                    padding: EdgeInsets.only(left: 20),
                    child: Row(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.all(10),
                          width: 100,
                          child: Image.asset(
                            "assets/images/profile_logo.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          width: 180,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                height: 40,
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  '公司名称',
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              // SizedBox(
                              //   height: 30,
                              // ),
                              Container(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  '薪海科技xxxxxxxxxx',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          width: 100,
                          right: 10,
                          child: Text(
                            '王xxx',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.only(left: 20),
                        child: Column(
                          children: <Widget>[
                            Container(
                              height: 40,
                              width: 100,
                              alignment: Alignment.center,
                              child: Text(
                                '累计打卡',
                                style: TextStyle(
                                  // fontSize: 20,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            // SizedBox(
                            //   height: 30,
                            // ),
                            Container(
                              alignment: Alignment.center,
                              child: Text(
                                '200天',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.only(left: 20),
                        child: Column(
                          children: <Widget>[
                            Container(
                              height: 40,
                              width: 100,
                              alignment: Alignment.center,
                              child: Text(
                                '本月工作',
                                style: TextStyle(
                                  // fontSize: 20,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            // SizedBox(
                            //   height: 30,
                            // ),
                            Container(
                              alignment: Alignment.center,
                              child: Text(
                                '20天',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.only(left: 20),
                        child: Column(
                          children: <Widget>[
                            Container(
                              height: 40,
                              width: 100,
                              alignment: Alignment.center,
                              child: Text(
                                '归档薪酬',
                                style: TextStyle(
                                  // fontSize: 20,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            // SizedBox(
                            //   height: 30,
                            // ),
                            Container(
                              alignment: Alignment.center,
                              child: Text(
                                '11111.00元',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
          height: 300,
          child: ListView(
            children:
                ListTile.divideTiles(context: context, tiles: this._getData())
                    .toList(),
          ),
        )
      ],
    );
  }
}
