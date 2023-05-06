import 'package:flutter/material.dart';
import 'package:islami_c8_str/args_model.dart';
import 'package:islami_c8_str/my_theme.dart';
import 'package:islami_c8_str/providers/sura_details_provider.dart';
import 'package:provider/provider.dart';

class SuraDetails extends StatelessWidget {
  static const String routeName = "suraDetails";

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as SuraModel;

    return ChangeNotifierProvider(
      create: (context) => SuraDetailsProvider()..loadFile(args.index),
      builder: (context, child) {
        var provider = Provider.of<SuraDetailsProvider>(context);
        return Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                Theme.of(context).colorScheme.brightness == Brightness.light
                    ? "assets/images/main_bg.png"
                    : "assets/images/dark_main_bg.png",
              ),
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
            body: provider.verses.isEmpty
                ? Center(child: CircularProgressIndicator())
                : Card(
                    color: Theme.of(context).colorScheme.surface,
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
                              provider.verses[index],
                              textAlign: TextAlign.center,
                              style: Theme.of(context).textTheme.bodySmall,
                            ),
                          );
                        },
                        itemCount: provider.verses.length,
                      ),
                    ),
                  ),
          ),
        );
      },
    );
  }
}
