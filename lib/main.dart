import 'package:flutter/material.dart';
import 'package:islami_c8_str/home.dart';
import 'package:islami_c8_str/my_theme.dart';
import 'package:islami_c8_str/sura_details.dart';

void main() {
  runApp(MyApplication());
}

class MyApplication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: MyThemeData.lightTheme,
      darkTheme: MyThemeData.darkTheme,
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (content) => HomeScreen(),
        SuraDetails.routeName: (content) => SuraDetails(),
      },
    );
  }
}
