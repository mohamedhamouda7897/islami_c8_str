import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_c8_str/args_model.dart';
import 'package:islami_c8_str/my_theme.dart';

class SuraDetails extends StatefulWidget {
  static const String routeName = "suraDetails";

  @override
  State<SuraDetails> createState() => _SuraDetailsState();
}

class _SuraDetailsState extends State<SuraDetails> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as SuraModel;
    if (verses.isEmpty) {
      loadFile(args.index);
    }

    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/main_bg.png"),
          fit: BoxFit.fill,
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "${args.name}",
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ),
        body: verses.isEmpty
            ? Center(child: CircularProgressIndicator())
            : Card(
                elevation: 18,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(12),
                        bottomLeft: Radius.circular(12)),
                    side: BorderSide(color: MyThemeData.lightColor)),
                margin: EdgeInsets.symmetric(vertical: 35, horizontal: 18),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListView.separated(
                    separatorBuilder: (context, index) => Divider(
                      endIndent: 45,
                      indent: 45,
                      thickness: 1,
                      color: Theme.of(context).primaryColor,
                    ),
                    itemBuilder: (context, index) {
                      return Center(
                        child: Text(
                          verses[index],
                          textAlign: TextAlign.center,
                          style: GoogleFonts.elMessiri(fontSize: 20),
                        ),
                      );
                    },
                    itemCount: verses.length,
                  ),
                ),
              ),
      ),
    );
  }

  void loadFile(int index) async {
    String Sura = await rootBundle.loadString("assets/files/${index + 1}.txt");

    List<String> lines = Sura.split("\n");
    print(lines);
    verses = lines;
    setState(() {});
  }
}
