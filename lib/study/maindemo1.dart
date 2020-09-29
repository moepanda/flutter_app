import 'package:flutter/material.dart';


void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      // title: 'Startup Name Generator',
      home: Scaffold(
        appBar: AppBar(
          title: Text('hello flutter'),
        ),
        body: LoginPage(),
      )
    );
  }
}
class LoginPage extends StatefulWidget{
  // @override
  // State<StatefulWidget> createState() {
  //   throw UnimplementedError();
  // }
  @override
  _LoginPageState createState() => _LoginPageState();
}
class _LoginPageState extends State<LoginPage>{
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        '你好 flutter',
        textDirection: TextDirection.ltr,
        style: TextStyle(
          fontSize: 40,
          color: Colors.red,
        ),
      ),
    );
  }

}