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
    return Center(
      // child: Container(
      //   // child: Image.network(
      //   //   "http://pic.baike.soso.com/p/20130828/20130828161137-1346445960.jpg",
      //   //   fit: BoxFit.cover,
      //   // ),
      //   height: 300.0,
      //   width: 300.0,
      //   decoration: BoxDecoration(
      //     color: Colors.yellow,
      //     border: Border.all(
      //       color: Colors.blue,
      //       width: 2.0,
      //     ),
      //     borderRadius: BorderRadius.all(Radius.circular(150.0)),
      //     image: DecorationImage(
      //       // image: AssetImage("assets/images/qrcode.png"),
      //       image: NetworkImage(
      //         "http://pic.baike.soso.com/p/20130828/20130828161137-1346445960.jpg",
      //       ),
      //     )
      //   ),
      // ),
      child: ClipOval(
          child: Image.network(
        "http://pic.baike.soso.com/p/20130828/20130828161137-1346445960.jpg",
        height: 150,
        width: 150,
        // alignment: Alignment.center,
        // fit: BoxFit.cover,
      )),
    );
  }
}
