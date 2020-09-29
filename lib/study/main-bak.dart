import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      // title: 'Startup Name Generator',
      home: new LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  static final String sName = "login";

  @override
  createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  /// 定义登陆模式：账号密码登陆或者
  String loginMode = 'login';

  /// 定义验证码按钮被点击后的延时
  int vercodeDelay = 0;
  Timer _timer;

  TextEditingController _usernameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _verCodeController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/qrcode.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        resizeToAvoidBottomPadding: false, // 可以解决输入框被键盘遮挡的问题
        // backgroundColor: Color.fromARGB(150, 255, 255, 255),
        body: Container(
          padding: EdgeInsets.all(40),
          child: getLoginComp(),
        ),
      ),
    );
  }

  getPasswordComp() {
    return TextField(
      controller: _passwordController,
      decoration: InputDecoration(
        // labelText: "密码",
        hintText: "您的登录密码",
        prefixIcon: Icon(Icons.lock),
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
      obscureText: true,
    );
  }

  /// 登陆模块
  getLoginComp() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          '用户登录',
          style: TextStyle(
            fontSize: 32,
          ),
        ),
        SizedBox(
          height: 32,
        ),
        TextField(
            // autofocus: true,
            controller: _usernameController,
            decoration: InputDecoration(
              labelText: "用户名",
              hintText: "手机号",
              prefixIcon: Icon(Icons.person),
              contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
            ),
            keyboardType: TextInputType.number,
            inputFormatters: [
              WhitelistingTextInputFormatter(RegExp("[0-9]")),
            ]),
        SizedBox(
          height: 12,
        ),
        loginMode == 'login' ? getPasswordComp() : getVerificationComp(),
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
              onLogin();
            },
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            FlatButton(
              color: Colors.transparent,
              child: Text(
                loginMode == 'login' ? "验证码登陆" : "账号密码登陆",
                style: TextStyle(fontSize: 16, color: Colors.blue),
              ),
              onPressed: () {
                onChangeLoginMode();
              },
            ),
            FlatButton(
              color: Colors.transparent,
              child: Text(
                "忘记密码",
                style: TextStyle(fontSize: 16, color: Colors.blue),
              ),
              onPressed: () {},
            ),
          ],
        )
      ],
    );
  }

  /// 验证码模块
  getVerificationComp() {
    return Stack(
      children: <Widget>[
        TextField(
          // autofocus: true,
          keyboardType: TextInputType.number,
          controller: _verCodeController,
          decoration: InputDecoration(
            prefixIcon: Icon(Icons.lock),
            contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
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
              vercodeDelay == 0 ? "获取验证码" : vercodeDelay.toString() + 's',
              style: TextStyle(fontSize: 12),
            ),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0)),
            onPressed: vercodeDelay == 0
                ? () {
                    onGetVerification();
                  }
                : null,
          ),
        )
      ],
    );
  }

  /// 获取验证码
  onGetVerification() async {
    if (vercodeDelay != 0) {
      return;
    }

    String phone = '18515597305';
    // String phone = _usernameController.text;
    setState(() {
      vercodeDelay = 60;
      startCountdownTimer();
    });

    // var res = await NetUtils.getVercode(phone);
  }

  /// 变更登陆模式
  onChangeLoginMode() {
    if (loginMode == 'login') {
      this.setState(() {
        loginMode = 'Verification';
      });
    } else {
      this.setState(() {
        loginMode = 'login';
      });
    }
  }

  /// 账号密码登陆
  onLogin() async {
    String phone = _usernameController.text;
    String password = _passwordController.text;
    if (phone == '' || phone.length != 11) {
      return;
    }
    if (password == '' || password.length < 6) {
      return;
    }
    Navigator.of(context).pushReplacementNamed("home");
//    if (loginMode == 'login') {
//      Map param = {
//        'phone': phone,
//        'password': password,
//      };
//      Map res = await NetUtils.login(param);
//      if (res['code'] == 200) {
//        Navigator.of(context).pushReplacementNamed("home");
//      }
//      return;
//    }
//    var res = await NetUtils.vercodeLogin(password);
//    if (res['code'] == 200) {
//      Navigator.of(context).pushReplacementNamed("home");
//    }
  }

  /// 倒计时
  void startCountdownTimer() {
    const oneSec = const Duration(seconds: 1);

    var callback = (timer) => {
          setState(() {
            if (vercodeDelay < 1) {
              _timer.cancel();
            } else {
              vercodeDelay = vercodeDelay - 1;
            }
          })
        };
    _timer = Timer.periodic(oneSec, callback);
  }

  @override
  void dispose() {
    super.dispose();
    if (_timer != null) {
      _timer.cancel();
    }
  }
}
