import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
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
class HomeContent extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text(
          '我是一个文本,我是一个文本我是一个文本我是一个文本我是一个文本我是一个文本',
          textAlign: TextAlign.center,
          style: TextStyle(
            // fontSize: 30.0
          ),
          overflow: TextOverflow.ellipsis,
        ),
        width: 300.0,
        height: 300.0,
        decoration: BoxDecoration(
          color: Colors.yellow,
          border: Border.all(
            color: Colors.blue,
            width: 2.0,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(10.0)
          )
        ),
        alignment: Alignment.center,
        padding: EdgeInsets.all(4.0),
        margin: EdgeInsets.all(4.0),
        // transform: Matrix4.translationValues(100,0,0),
        // transform: Matrix4.rotationZ(360),
      ),
    );
  }
}