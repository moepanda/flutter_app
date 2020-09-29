///**
// * Create with Android Studio
// * Author : SUNHUI
// * DateTime : 2020/9/17 4:12 PM
// * email : 951468815@qq.com
// * tag :
// */
//import 'package:flutter/material.dart';
//import 'package:flutter_app/tabs.dart';
//import 'GradientButton.dart';
//
//class LoginPage extends StatefulWidget {
//  @override
//  _LoginPageState createState() => _LoginPageState();
//}
//
//class _LoginPageState extends State<LoginPage> {
//
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//        resizeToAvoidBottomPadding: false,
//        body: Stack(
//          children: [
//            Container(
//              alignment: Alignment.topCenter,
//              decoration: new BoxDecoration(
//                color: Colors.white,
//              ),
//              child: Column(
//                children: [
//                  headWidget(),
//                  inputPhoneWidget("assets/images/login_icon_user.png", "请输入手机号"),
//                  inputCodeWidget("assets/images/login_icon_lock.png", "请输入验证码"),
//                  Container(
//                    padding: EdgeInsets.all(30),
//                    child: GradientButton(
//                      child: Text('登陆'),
//                      height: 46,
//                      colors: [Colors.lightBlue,Colors.blue,Colors.blue],
//                      onPressed: () {
//                        Navigator.push(context, MaterialPageRoute(builder: (context) {
//                          return Tabs();
//                        }));
//                      },
//                      borderRadius: BorderRadius.all(Radius.circular(24)),
//                    ),
//                  )
//                ],
//              ),
//            ),
//            Container(
//              alignment: Alignment.bottomCenter,
//              child: Image.asset(
//                "assets/images/login_bottom_bg.png",//图片路径
//                fit: BoxFit.fill,//fit缩放模式
//              ),
//            )
//          ],
//        )
//    );
//  }
//
//  //头部布局
//  Widget headWidget() {
//    return Stack(
//      children: [
//        Image.asset(
//          "assets/images/login_top_bg.png",//图片路径
//          fit: BoxFit.fill,//fit缩放模式
//        ),
//        Column(
//          children: [
//            Container(
//              alignment: Alignment.center,
//              padding: EdgeInsets.only(top: 60),
//              child: Image.asset(
//                "assets/images/login_logo.png",//图片路径
//                width: 60,
//                height: 60,
//              ),
//            ),
//            Container(
//              alignment: Alignment.center,
//              padding: EdgeInsets.only(top: 16),
//              child: Image.asset(
//                "assets/images/login_slogan.png",//图片路径
//                width: 100,
//              ),
//            ),
//          ],
//        )
//      ],
//    );
//  }
//
//  //手机号输入框布局
//  Widget inputPhoneWidget(String imagePath, String hint) {
//    return Container(
//      transform: Matrix4.identity()..translate(0.0, -20.0),
//      padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
//      child: Row(
//        mainAxisAlignment: MainAxisAlignment.center,
//        children: [
//          Image.asset(
//            imagePath,//图片路径
//            width: 20,
//            height: 20,
//          ),
//          Expanded(
//            child: Container(
//              padding: EdgeInsets.only(left: 10),
//              transform: Matrix4.identity()..translate(0.0, -10.0),
//              child: TextField(
//                decoration: InputDecoration(
//                  hintText: hint,
//                  hintStyle: TextStyle(
//                      fontSize: 14,
//                      color: Colors.black26
//                  ),
//                  contentPadding: EdgeInsets.only(top: 0, bottom: -16),//设置文字内容与边框距离
//                  enabledBorder: UnderlineInputBorder(
//                      borderSide: BorderSide(
//                          width: 1,
//                          color: Color(0xffD5D5D5),
//                          style: BorderStyle.solid)),
//                ),
//              ),
//            ),
//          ),
//        ],
//      ),
//    );
//  }
//
//  //验证码输入框布局
//  Widget inputCodeWidget(String imagePath, String hint) {
//    return Container(
//      transform: Matrix4.identity()..translate(0.0, -10.0),
//      padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
//      child: Row(
//        mainAxisAlignment: MainAxisAlignment.center,
//        children: [
//          Image.asset(
//            imagePath,//图片路径
//            width: 20,
//            height: 20,
//          ),
//          Expanded(
//            child: Container(
//                padding: EdgeInsets.only(left: 10),
//                transform: Matrix4.identity()..translate(0.0, -10.0),
//                child: Stack(
//                  children: [
//                    TextField(
//                      decoration: InputDecoration(
//                        hintText: hint,
//                        hintStyle: TextStyle(
//                            fontSize: 14,
//                            color: Colors.black26
//                        ),
//                        contentPadding: EdgeInsets.only(top: 0, bottom: -16),//设置文字内容与边框距离
//                        enabledBorder: UnderlineInputBorder(
//                            borderSide: BorderSide(
//                                width: 1,
//                                color: Color(0xffD5D5D5),
//                                style: BorderStyle.solid)),
//                      ),
//                    ),
//                    Container(
//                      transform: Matrix4.identity()..translate(0.0, 6.0),
//                      child: Align(
//                          alignment: Alignment.bottomRight,
//                          child: ButtonTheme(
//                            height: 26,
//                            child: RaisedButton(
//                              color: Colors.blue,
//                              onPressed: () {
//                                print('点击了获取验证码');
//                              },
//                              child: Text('获取验证码',style: TextStyle(fontSize: 12.0,color: Colors.white),),
//                              //圆角
//                              shape: RoundedRectangleBorder(
//                                  side: BorderSide.none,
//                                  borderRadius: BorderRadius.all(Radius.circular(20))
//                              ),
//                            ),
//                          )
//                      ),
//                    )
//                  ],
//                )
//            ),
//          ),
//        ],
//      ),
//    );
//  }
//
//}