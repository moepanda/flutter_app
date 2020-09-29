import 'package:flutter/material.dart';
import '../pages/Tabs.dart';

class ProductInfoPage extends StatefulWidget {
  final arguments;
  ProductInfoPage({Key key, this.arguments}) : super(key: key);

  _ProductInfoState createState() =>
      _ProductInfoState(arguments: this.arguments);
}

class _ProductInfoState extends State<ProductInfoPage> {
  var arguments;
  _ProductInfoState({this.arguments});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("产品详情"),
      ),
      body: Column(
        children: <Widget>[
          Text("pid=${arguments['pid']}"),
          RaisedButton(
            child: Text("返回首页"),
            onPressed: () {
              //返回根路由
              Navigator.of(context).pushAndRemoveUntil(
                  new MaterialPageRoute(builder: (context) => new Tabs(index: 0,)),
                  (route) => route == null);
            },
            color: Theme.of(context).accentColor,
            textTheme: ButtonTextTheme.primary,
          ),
        ],
      ),
    );
  }
}
