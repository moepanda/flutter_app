import 'package:flutter/material.dart';
import '../../ItemList.dart';

class MySelfPage extends StatefulWidget {
  MySelfPage({Key key}) : super(key: key);

  _MySelfPageState createState() => _MySelfPageState();
}

class _MySelfPageState extends State<MySelfPage> {
  //自定义方法
  // List<Widget> _getData() {
  //   var tempList = itemList.isNotEmpty
  //       ? itemList.map((value) {
  //           return ListTile(
  //             leading: Image.asset(value["leading"]),
  //             title: Text(value["title"]),
  //             trailing: Image.asset(value["trailing"]),
  //             dense: true,
  //           );
  //         }).toList()
  //       : [];
  //   return tempList;
  // }

  @override
  Widget build(BuildContext context) {
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
                    // padding: EdgeInsets.fromLTRB(0, 20, 10, 0),
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
                        Container(
                          child: Text(
                            "王xxx",
                            style: TextStyle(color: Colors.white),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    flex: 2,
                    child: Column(
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
                  ),
                  Expanded(
                    flex: 2,
                    child: Column(
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
                  ),
                  Expanded(
                    flex: 2,
                    child: Column(
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
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
          height: 300,
          // child: ListView(
          //   children:
          //       ListTile.divideTiles(context: context, tiles: this._getData()).toList(),
          // ),
          child: ListView.builder(
            itemCount: itemList.length,
            itemBuilder: (context, index) {
              return Container(
                child: ListTile(
                  leading: Image.asset(itemList[index]["leading"]),
                  title: Text(itemList[index]["title"]),
                  trailing: Image.asset(itemList[index]["trailing"]),
                  dense: true,
                  onTap: () {
                    //路由跳转，传递参数
                    if (itemList[index]["router"].toString() == "salaryInfo") {
                      Navigator.pushNamed(
                          context, "/" + itemList[index]["router"].toString(),
                          arguments: {"info": itemList[index]});
                    } else {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return new AlertDialog(
                              title: new Text('提示框！'),
                              content: SingleChildScrollView(
                                child: ListBody(
                                  children: <Widget>[
                                    new Text('该功能暂未实现！'),
                                  ],
                                ),
                              ),
                              actions: <Widget>[
                                RaisedButton(
                                  child: Text("确定"),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                ),
                              ],
                            );
                          }).then((val) {
                            print(val);
                      });
                    }
                  },
                ),
                decoration: BoxDecoration(
                    border: Border(
                        bottom:
                            BorderSide(width: 1, color: Color(0xffe5e5e5)))),
              );
            },
          ),
        )
      ],
    );
  }
}
