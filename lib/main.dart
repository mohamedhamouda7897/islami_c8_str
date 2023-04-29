import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:islami_c8_str/hadeth_details.dart';
import 'package:islami_c8_str/home.dart';
import 'package:islami_c8_str/my_theme.dart';
import 'package:islami_c8_str/providers/my_provider.dart';
import 'package:islami_c8_str/sura_details.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => MyProvider(), child: MyApplication()));
}

class MyApplication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    return MaterialApp(
      theme: MyThemeData.lightTheme,
      localizationsDelegates: [
        AppLocalizations.delegate, // Add this line
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale("en"),
        Locale("ar"),
      ],
      locale: Locale(provider.languageCode),
      darkTheme: MyThemeData.darkTheme,
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (content) => HomeScreen(),
        SuraDetails.routeName: (content) => SuraDetails(),
        HadethDetails.routeName: (content) => HadethDetails(),
      },
    );
  }
}
