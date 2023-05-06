import 'package:flutter/material.dart';
import 'package:islami_c8_str/hadeth_model.dart';

class HadethDetails extends StatelessWidget {
  static const String routeName = "HadethContent";

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as HadethModel;
    return Stack(children: [
      SizedBox(
          width: double.infinity,
          child: Image.asset(
            Theme.of(context).colorScheme.brightness == Brightness.light
                ? "assets/images/main_bg.png"
                : "assets/images/dark_main_bg.png",
            fit: BoxFit.fill,
          )),
      Scaffold(
        appBar: AppBar(
          title: Text(
            args.title,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ),
        body: SingleChildScrollView(
          child: Card(
            color: Theme.of(context).colorScheme.surface,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18),
                side: BorderSide(color: Theme.of(context).primaryColor)),
            margin: EdgeInsets.all(18),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(
                args.content,
                textDirection: TextDirection.rtl,
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ),
          ),
        ),
      ),
    ]);
  }
}
