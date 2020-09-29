import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Hellow Flutter'),
        ),
        body: HomeContent(),
      ),
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
    );
  }
}

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Container(
            child: Text(
              '我是Container',
              style: TextStyle(
                fontSize: 30
              ),
            ),
            height: 200,
            width: 200,
            decoration: BoxDecoration(color: Colors.blue),
          ),
          Text('----------------------------'),
          Image.network(
              "http://pic.baike.soso.com/p/20130828/20130828161137-1346445960.jpg")
        ],
      ),
    );
  }
}
