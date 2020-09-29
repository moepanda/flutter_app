import 'package:flutter/material.dart';

class TabBarControllerDemoPage extends StatefulWidget {
  TabBarControllerDemoPage({Key key}) : super(key: key);

  _TabBarControllerDemoPageState createState() =>
      _TabBarControllerDemoPageState();
}

//必须有状态组件，需要继承SingleTickerProviderStateMixin,一下为固定写法
class _TabBarControllerDemoPageState extends State<TabBarControllerDemoPage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  @override
  void initState() {
    //声明周期函数
    super.initState();
    //length 为tab长度
    _tabController = new TabController(vsync: this, length: 2);
    //自定义业务逻辑
    _tabController.addListener(() {
      print(_tabController.index);
    });
  }

  @override
  void dispose() {
    //销毁时执行
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.green,
        title: Text("TabBarControllerDemo"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              print("appBar 添加按钮");
            },
          )
        ],
        // bottom: TabBar(
        //   controller: _tabController, //监听controller配置
        //   isScrollable: true, //横向滚动
        //   // labelColor: Colors.grey, //lable字体颜色
        //   // indicatorColor: Colors.grey, //选择时下划线颜色
        //   // unselectedLabelColor: Colors.white, //未选择时下划线颜色
        //   // unselectedLabelStyle: Colors.white, //未选择时下划线颜色
        //   tabs: <Widget>[
        //     Tab(
        //       text: "热销",
        //     ),
        //     Tab(
        //       text: "推荐",
        //     ),
        //   ],
        // ),
        bottom: PreferredSize(
            preferredSize: Size.fromHeight(40),
            child: Container(
              width: double.infinity,
              color: Colors.white,
              child: TabBar(
                controller: _tabController, //监听controller配置
                isScrollable: true, //横向滚动
                // labelColor: Colors.grey, //lable字体颜色
                // indicatorColor: Colors.grey, //选择时下划线颜色
                // unselectedLabelColor: Colors.white, //未选择时下划线颜色
                // unselectedLabelStyle: Colors.white, //未选择时下划线颜色
                indicatorSize: TabBarIndicatorSize.label,
                indicatorColor: Colors.blueAccent[700],
                unselectedLabelColor: Colors.blueAccent[200],
                labelColor: Colors.blueAccent[700],
                tabs: <Widget>[
                  Tab(
                    text: "热销",
                  ),
                  Tab(
                    text: "推荐",
                  ),
                ],
              ),
            )),
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          Center(
            child: Text("热销"),
          ),
          Center(
            child: Text("推荐"),
          ),
        ],
      ),
    );
  }
}
