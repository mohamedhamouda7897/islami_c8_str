import 'package:flutter/material.dart';

import '../../my_theme.dart';
import 'cusom_variable_azkar.dart';
import 'custom_variable_num.dart';

class SebhaTab extends StatefulWidget {
  const SebhaTab({Key? key}) : super(key: key);

  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  int mainCounter = 0;
  int counter = 0;
  int indexCounter = 0;
  int indexList = 0;
  List<String> namedAzkar = [
    'سبحان الله',
    'الحمدلله',
    'لا اله الا الله',
    'الله اكبر'
  ];

 double angle = 0;


  @override
  Widget build(BuildContext context) {
    double widthScreen = MediaQuery.of(context).size.width;
    double hightScreen = MediaQuery.of(context).size.height;

    return Container(
      //color: Colors.brown,
      alignment: Alignment.topCenter,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: hightScreen * 0.0005,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    Functionality();
                  });
                },
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      alignment: Alignment.topCenter,
                      // width: widthScreen * 0.4,
                      // height: hightScreen * 0.3,
                      child: Stack(
                        alignment: Alignment.topCenter,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 37),
                            child: Transform.rotate(
                              angle:angle ,
                              child: Image.asset(
                                height: 150,
                                width: 150,
                                'assets/images/body_sebha.png',
                              ),
                            ),
                          ),
                          Image.asset(
                            alignment: Alignment.topRight,
                            height: 60,
                            width: 60,
                            'assets/images/head_sebha.png',
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: hightScreen * 0.06,
                      ),
                      child: Text(
                        '$mainCounter',
                        style: TextStyle(
                            color: MyThemeData.lightColor,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
              Text('The Num of Tasabeh'),
              CustomVariableNum(variableNum: '$counter'),
              CustomVariableAzkar(variableAzkar: '${namedAzkar[indexList]}'),
              SizedBox(
                height: hightScreen * 0.02,
              ),
            ],
          ),


         Padding(
            padding: EdgeInsets.only(top: hightScreen*0.09, left: widthScreen*0.04),
            child: GestureDetector(
              onTap: () {

                setState(() {
                  mainCounter = 0;
                  counter = 0;
                  indexList = 0;
                  indexCounter = 0;
                });
              },
              child: Column(

                children: [
                  Container(
                    height: hightScreen * 0.03,
                    width: widthScreen * 0.055  ,
                    decoration: BoxDecoration(
                      color: MyThemeData.lightColor,
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                    ),
                  ),
                  Text('reset'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
  void Functionality(){
    if (indexCounter == 30) {
      counter = 0;
      indexCounter = 0;
      if (indexList < namedAzkar.length - 1) {
        indexList++;
      } else {
        indexList = 0;
      }
    }
    mainCounter++;
    counter++;
    indexCounter++;
    angle += 2/33 ;

  }


}
