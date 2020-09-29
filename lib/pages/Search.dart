import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  var arguments;
  SearchPage({this.arguments});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("搜索页面"),
      ),
      body: Text("xxxxx=${arguments != null ? arguments: '0'}"),
    );
  }
}
