import 'package:flutter/material.dart';
import 'routes/Routers.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: Tabs(),
      initialRoute: '/', //初始化加载的路由
      debugShowCheckedModeBanner: false, //去掉右上角debug
      onGenerateRoute: onGenerateRoute, //命名示路由
    );
  }
}
