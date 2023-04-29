import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_c8_str/hadeth_details.dart';
import 'package:islami_c8_str/hadeth_model.dart';

class AhadethTab extends StatefulWidget {
  @override
  State<AhadethTab> createState() => _AhadethTabState();
}

class _AhadethTabState extends State<AhadethTab> {
  List<HadethModel> allAhadeth = [];

  @override
  Widget build(BuildContext context) {
    if (allAhadeth.isEmpty) {
      loadHadethFile();
    }

    return Column(
      children: [
        Image.asset("assets/images/hadeth_bg.png"),
        Divider(
          thickness: 2,
          color: Theme.of(context).primaryColor,
        ),
        Text(
          "Ahadeth",
          style: GoogleFonts.elMessiri(
              fontWeight: FontWeight.w600,
              fontSize: 25,
              color: Theme.of(context).secondaryHeaderColor),
        ),
        Divider(
          thickness: 2,
          color: Theme.of(context).primaryColor,
        ),
        Expanded(
          child: ListView.separated(
            separatorBuilder: (context, index) => Divider(
              endIndent: 40,
              indent: 40,
              thickness: 1,
              color: Theme.of(context).primaryColor,
            ),
            // shrinkWrap: true,
            // physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  Navigator.pushNamed(context, HadethDetails.routeName,
                      arguments: allAhadeth[index]);
                },
                child: Text(allAhadeth[index].title,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.elMessiri(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: Theme.of(context).secondaryHeaderColor)),
              );
            },
            itemCount: allAhadeth.length,
          ),
        ),
      ],
    );
  }

  void loadHadethFile() async {
    // try{
    //   String hadeth=await rootBundle.loadString("assets/files/ahadeth.txt");
    //
    // }catch(error){
    //   print(error);
    // }

    print(doc.trim()); //>> "Abdu llah"
    rootBundle.loadString("assets/files/ahadeth.txt").then((value) {
      List<String> AhadethContent = value.split("#");
      for (int i = 0; i < AhadethContent.length; i++) {
        int lastIndex = AhadethContent[i].trim().indexOf("\n");
        String title = AhadethContent[i].trim().substring(0, lastIndex);
        String content = AhadethContent[i].substring(lastIndex + 1);
        HadethModel hadethModel = HadethModel(title, content);
        allAhadeth.add(hadethModel);
      }
      setState(() {});

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
