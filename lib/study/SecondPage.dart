import 'package:flutter/material.dart';
import '../DataList.dart';

class SecondPage extends StatelessWidget {
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
  Widget _getListTile(content, index) {
    return ListTile(
      leading: Image.network(listData[index]["imageUrl"]),
      title: Text(listData[index]["title"]),
      subtitle: Text(listData[index]["author"]),
    );
  }

  // List _getList() {
  //   print(listData.length);
  //   List list = listData.map((value) {
  //     return ListTile(
  //       leading: Image.network(value["imageUrl"]),
  //       title: Text(value["title"]),
  //       subtitle: Text(value["author"]),
  //     );
  //   }).toList();
  //   return list;
  // }

  @override
  Widget build(BuildContext context) {
    // List l = this._getList();
    // for (var i = 0; i < l.length; i++) {
    //   print(l[i].toString());
    // }
    return Container(
        child: ListView.builder(
      itemCount: listData.length,
      // itemBuilder: (content, index) {
      //   return this._getListTile(content, index);
      // },
      itemBuilder: this._getListTile,
    ));
  }
}
