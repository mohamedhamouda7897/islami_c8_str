import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../hadeth_model.dart';

class HadethProvider extends ChangeNotifier {
  List<HadethModel> allAhadeth = [];

  void loadHadethFile() async {
    // try{
    //   String hadeth=await rootBundle.loadString("assets/files/ahadeth.txt");
    //
    // }catch(error){
    //   print(error);
    // }

    rootBundle.loadString("assets/files/ahadeth.txt").then((value) {
      List<String> AhadethContent = value.split("#");
      for (int i = 0; i < AhadethContent.length; i++) {
        int lastIndex = AhadethContent[i].trim().indexOf("\n");
        String title = AhadethContent[i].trim().substring(0, lastIndex);
        String content = AhadethContent[i].substring(lastIndex + 1);
        HadethModel hadethModel = HadethModel(title, content);
        allAhadeth.add(hadethModel);
      }
      notifyListeners();

      // for (int i = 0; i < AhadethContent.length; i++) {
      //   List<String> lines = AhadethContent[i].trim().split("\n");
      //   String title = lines[0];
      //   lines.removeAt(0);
      //   List<String> content = lines;
      //   print(title);
      //   HadethModel hadethModel = HadethModel(title, content);
      //   allAhadeth.add(hadethModel);
      //   setState(() {});
      // }
    }).catchError((error) {
      print(error);
    });
  }
}
