import 'package:flutter/material.dart';
import 'package:islami_c8_str/providers/my_provider.dart';
import 'package:provider/provider.dart';

class ShowLanguageSheet extends StatelessWidget {
  const ShowLanguageSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          InkWell(
            onTap: () {
              provider.changeLanguage("en");
              Navigator.pop(context);
            },
            child: Row(
              children: [
                Text(
                  "English",
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      color: provider.languageCode == "en"
                          ? Theme.of(context).primaryColor
                          : Colors.black54,
                      fontSize: 28,
                      fontWeight: FontWeight.w200),
                ),
                Spacer(),
                Icon(
                  Icons.done,
                  color: provider.languageCode == "en"
                      ? Theme.of(context).primaryColor
                      : Colors.black54,
                  size: 30,
                )
              ],
            ),
          ),
          InkWell(
            onTap: () {
              provider.changeLanguage("ar");
              Navigator.pop(context);
            },
            child: Row(
              children: [
                Text("Arabic",
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color: provider.languageCode != "en"
                            ? Theme.of(context).primaryColor
                            : Colors.black54,
                        fontSize: 28,
                        fontWeight: FontWeight.w200)),
                Spacer(),
                Icon(
                  Icons.done,
                  color: provider.languageCode != "en"
                      ? Theme.of(context).primaryColor
                      : Colors.black54,
                  size: 30,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
