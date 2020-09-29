import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  _HomePageState createState() => _HomePageState();
}

//命名是路由，路由需配置在MaterialApp中
class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          RaisedButton(
            child: Text('跳转传值'),
            onPressed: () {
              Navigator.pushNamed(context, '/search',
                  arguments: {"id", 123213213123});
            },
            color: Theme.of(context).accentColor,
            textTheme: ButtonTextTheme.primary,
          ),
          RaisedButton(
            child: Text('表单页演示'),
            onPressed: () {
              Navigator.pushNamed(context, '/form');
            },
            color: Theme.of(context).accentColor,
            textTheme: ButtonTextTheme.primary,
          ),
          RaisedButton(
            child: Text('返回根路由'),
            onPressed: () {
              Navigator.pushNamed(context, '/product');
            },
            color: Theme.of(context).accentColor,
            textTheme: ButtonTextTheme.primary,
          ),
          RaisedButton(
            child: Text('跳转到登录'),
            onPressed: () {
              Navigator.pushNamed(context, '/login');
            },
            color: Theme.of(context).accentColor,
            textTheme: ButtonTextTheme.primary,
          ),
          RaisedButton(
            child: Text("TabBar演示"),
            onPressed: () {
              Navigator.pushNamed(context, "/tabBarContollerDemo");
            },
            color: Theme.of(context).accentColor,
            textTheme: ButtonTextTheme.primary,
          ),
        ],
      ),
    );
  }
}
