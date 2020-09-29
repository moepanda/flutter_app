import 'package:flutter/material.dart';

class ProductPage extends StatefulWidget {
  ProductPage({Key key}) : super(key: key);

  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('产品列表'),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text('我是产品'),
          ),
          RaisedButton(
            child: Text('跳转到产品详情'),
            onPressed: () {
              Navigator.pushNamed(context, "/productInfo",
                  arguments: {"pid": 123});
            },
          )
        ],
      ),
    );
  }
}
