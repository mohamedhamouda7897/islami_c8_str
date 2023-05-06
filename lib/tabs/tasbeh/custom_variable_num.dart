import 'package:flutter/material.dart';
import 'package:islami_c8_str/my_theme.dart';

class CustomVariableNum extends StatelessWidget {
String variableNum='';
CustomVariableNum({required this.variableNum});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 60,
      decoration: BoxDecoration(

        color: MyThemeData.lightColor,

        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
      padding: EdgeInsets.all(15),
      child: Center(child: Text(variableNum,)),
    );
  }
}
