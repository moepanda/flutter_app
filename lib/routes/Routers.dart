import 'package:flutter/material.dart';
import '../pages/Form.dart';
import '../pages/Search.dart';
import '../pages/Product.dart';
import '../pages/ProductInfo.dart';
import '../pages/Tabs.dart';
import '../pages/user/Login.dart';
import '../pages/TabBarContollerDemo.dart';
import '../pages/SalaryInfo.dart';

//第一步配置路由
final routes = {
  '/': (context) => Tabs(),
  '/login': (content) => LoginPage(),
  '/form': (content) => FormPage(),
  '/product': (content) => ProductPage(),
  '/productInfo': (content, {arguments}) => ProductInfoPage(arguments: arguments),
  '/salaryInfo': (content, {arguments}) => SalaryInfoPage(arguments: arguments),
  '/search': (content, {arguments}) => SearchPage(arguments: arguments),
  '/tabBarContollerDemo': (content) => TabBarControllerDemoPage(),
};
//固定写法命名路由传参
var onGenerateRoute = (RouteSettings settings) {
  final String name = settings.name;
  final Function pageContentBuilder = routes[name];
  if (pageContentBuilder != null) {
    if (settings.arguments != null) {
      final Route route = MaterialPageRoute(
          builder: (context) =>
              pageContentBuilder(context, arguments: settings.arguments));
      return route;
    } else {
      final Route route =
          MaterialPageRoute(builder: (context) => pageContentBuilder(context));
      return route;
    }
  }
};
