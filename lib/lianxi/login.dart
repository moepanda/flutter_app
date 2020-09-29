import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import './My.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // appBar: AppBar(
        //   title: Text('Hellow Flutter'),
        // ),
        body: HomeContent(),
      ),
      // theme: ThemeData(
      //   primarySwatch: Colors.yellow,
      // ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomeContent extends StatelessWidget {
  _getVerifyCode() {
    print('获取短息验证码');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.white),
      child: Column(
        children: <Widget>[
          Container(
              width: double.maxFinite,
              height: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/login_top_bg.png"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    "assets/images/login_logo.png",
                    width: 60,
                    height: 60,
                  ),
                  Image.asset(
                    "assets/images/login_slogan.png",
                    width: 120,
                    height: 66,
                  ),
                ],
              )),
          Container(
            padding: EdgeInsets.fromLTRB(40, 0, 40, 0),
            child: Column(
              children: <Widget>[
                TextField(
                  decoration: InputDecoration(
                      // labelText: '手机号',
                      hintText: '请输入手机号',
                      icon: Image.asset(
                        "assets/images/login_icon_user.png",
                        height: 20,
                      ),
                      hintStyle: TextStyle(fontSize: 12)
                      // contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                      ),
                  keyboardType: TextInputType.number,
                  inputFormatters: [
                    WhitelistingTextInputFormatter(RegExp("[0-9]")),
                  ],
                ),
                SizedBox(
                  height: 32,
                ),
                Stack(
                  children: <Widget>[
                    TextField(
                      decoration: InputDecoration(
                          // labelText: '验证码',
                          hintText: '请输入验证码',
                          icon: Image.asset(
                            "assets/images/login_icon_lock.png",
                            height: 20,
                          ),
                          hintStyle: TextStyle(fontSize: 12)
                          // contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                          ),
                    ),
                    Positioned(
                      right: 5,
                      child: FlatButton(
                        disabledColor: Colors.grey[400],
                        color: Colors.blue,
                        // highlightColor: Colors.transparent,
                        colorBrightness: Brightness.dark,
                        // splashColor: Colors.grey,
                        child: Text(
                          "获取验证码",
                          style: TextStyle(fontSize: 12),
                        ),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0)),
                        onPressed: this._getVerifyCode,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 32,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 40,
                  child: FlatButton(
                    color: Colors.blue,
                    // highlightColor: Colors.transparent,
                    colorBrightness: Brightness.dark,
                    // splashColor: Colors.grey,
                    child: Text(
                      "登陆",
                      style: TextStyle(fontSize: 20),
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                    onPressed: () {
                      Navigator.of(context).pushAndRemoveUntil(
                          new MaterialPageRoute(builder: (context) => new My()),
                          (route) => route == null);
                    },
                  ),
                ),
              ],
            ),
          ),
          Stack(
            children: <Widget>[
              Positioned(
                // bottom: 1,
                child: Container(
                  margin: EdgeInsets.only(top: 60),
                  child: Image.asset(
                    "assets/images/login_bottom_bg.png",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
