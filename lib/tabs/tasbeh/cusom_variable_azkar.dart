import 'package:flutter/material.dart';
import 'package:islami_c8_str/my_theme.dart';

class CustomVariableAzkar extends StatelessWidget {
  String variableAzkar='';
  CustomVariableAzkar({required this.variableAzkar});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 53,
      width: 190,
      decoration: BoxDecoration(

        color: MyThemeData.lightColor,

        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
      padding: EdgeInsets.all(10),
      child: Center(child: Text(variableAzkar,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25))),
    );
  }
}
