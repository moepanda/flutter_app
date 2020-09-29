import 'package:flutter/material.dart';

class SalaryInfoPage extends StatelessWidget {
  final arguments;
  const SalaryInfoPage({this.arguments});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("工资单明细"),
      ),
      body: Container(
        child: Text("工资单明细=${this.arguments['info']}"),
      ),
    );
  }
}
