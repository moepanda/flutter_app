import 'package:flutter/material.dart';

class SettingPage extends StatefulWidget {
  SettingPage({Key key}) : super(key: key);

  _SettingPageState createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        ListTile(
          title: Text('个人信息设置'),
        ),
        ListTile(
          title: Text('手机号修改'),
        ),
        ListTile(
          title: Text('xxxxx'),
        )
      ],
    );
  }
}
