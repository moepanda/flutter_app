import 'package:flutter/material.dart';

class FormPage extends StatefulWidget {
  FormPage({Key key}) : super(key: key);

  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<FormPage> {
  String userName;
  int sex = 1;
  List listData = [
    {"check": true, "title": "看电视"},
    {"check": false, "title": "吃饭"},
    {"check": true, "title": "打游戏"},
  ];
  List<Widget> _getCheckData() {
    List<Widget> tempList = [];
    for (var i = 0; i < this.listData.length; i++) {
      tempList.add(Row(
        children: <Widget>[
          Text(this.listData[i]["title"] + ":"),
          Checkbox(
            value: this.listData[i]["check"],
            onChanged: (value) {
              setState(() {
                this.listData[i]["check"] = value;
              });
            },
          )
        ],
      ));
    }
    return tempList;
  }

  Widget build(BuildContext context) {
    //全局 Key 用来获取 Form 表单组件
    GlobalKey<FormState> _formKey = GlobalKey<FormState>();
    return Scaffold(
      appBar: AppBar(
        title: Text("表单演示"),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Form(
          //设置globalKey，用于后面获取FormState
          key: _formKey,
          autovalidate: true, //自动验证
          child: Column(
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(
                  icon: Icon(Icons.people),
                  hintText: "用户名",
                ),
                // onChanged: (value) {
                //   setState(() {
                //     this.usnerName = value;
                //   });
                // },
                validator: (value) {
                  if (value.isEmpty) {
                    return "请输入用户名";
                  } else {
                    return null;
                  }
                },
                //当 Form 表单调用保存方法 Save时回调的函数。
                onSaved: (value) {
                  userName = value;
                },
                // autovalidate: true, //自动验证
                // 当用户确定已经完成编辑时触发
                onFieldSubmitted: (value) {},
              ),
              SizedBox(height: 20),
              //单选框区域
              Row(
                children: <Widget>[
                  Text("男："),
                  Radio(
                    value: 1,
                    onChanged: (value) {
                      setState(() {
                        this.sex = value;
                      });
                    },
                    groupValue: this.sex,
                  ),
                  Text("女："),
                  Radio(
                    value: 2,
                    onChanged: (value) {
                      setState(() {
                        this.sex = value;
                      });
                    },
                    groupValue: this.sex,
                  ),
                ],
              ),
              SizedBox(height: 20),
              //复选框区域
              Row(
                children: this._getCheckData(),
              ),
              SizedBox(height: 40),
              //按钮区域
              Container(
                width: double.infinity,
                child: RaisedButton(
                  child: Text("提交表单"),
                  color: Colors.blue,
                  textColor: Colors.white,
                  onPressed: () {
                    //读取当前 Form 状态
                    var formKey = _formKey.currentState;
                    if (formKey.validate()) {
                      formKey.save();
                      var params = {
                        "usnerName": this.userName,
                        "sex": this.sex,
                        "checkData": this.listData,
                      };
                      print(params);
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //       appBar: AppBar(
  //         title: Text("表单演示"),
  //       ),
  //       body: Container(
  //         padding: EdgeInsets.all(20),
  //         child: Column(
  //           children: <Widget>[
  //             TextField(
  //               decoration: InputDecoration(
  //                 icon: Icon(Icons.people),
  //                 hintText: "用户名",
  //               ),
  //               onChanged: (value) {
  //                 setState(() {
  //                   this.usnerName = value;
  //                 });
  //               },
  //             ),
  //             SizedBox(height: 20),
  //             //单选框区域
  //             Row(
  //               children: <Widget>[
  //                 Text("男："),
  //                 Radio(
  //                   value: 1,
  //                   onChanged: (value) {
  //                     setState(() {
  //                       this.sex = value;
  //                     });
  //                   },
  //                   groupValue: this.sex,
  //                 ),
  //                 Text("女："),
  //                 Radio(
  //                   value: 2,
  //                   onChanged: (value) {
  //                     setState(() {
  //                       this.sex = value;
  //                     });
  //                   },
  //                   groupValue: this.sex,
  //                 ),
  //               ],
  //             ),
  //             SizedBox(height: 20),
  //             //复选框区域
  //             Row(
  //               children: this._getCheckData(),
  //             ),
  //             SizedBox(height: 40),
  //             //按钮区域
  //             Container(
  //               width: double.infinity,
  //               child: RaisedButton(
  //                 child: Text("提交表单"),
  //                 color: Colors.blue,
  //                 textColor: Colors.white,
  //                 onPressed: () {
  //                   var params = {
  //                     "usnerName": this.usnerName,
  //                     "sex": this.sex,
  //                     "checkData": this.listData,
  //                   };
  //                   print(params);
  //                 },
  //               ),
  //             ),
  //           ],
  //         ),
  //       ));
  // }
}
