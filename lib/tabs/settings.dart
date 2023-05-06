import 'package:flutter/material.dart';
import 'package:islami_c8_str/providers/my_provider.dart';
import 'package:islami_c8_str/showLanguagesheet.dart';
import 'package:islami_c8_str/show_theme_bottom_sheet.dart';
import 'package:provider/provider.dart';

class SettingsTab extends StatefulWidget {
  const SettingsTab({Key? key}) : super(key: key);

  @override
  State<SettingsTab> createState() => _SettingsTabState();
}

class _SettingsTabState extends State<SettingsTab> {
  @override
  Widget build(BuildContext context) {
    var pro = Provider.of<MyProvider>(context);
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Language", style: Theme.of(context).textTheme.bodySmall),
          SizedBox(
            height: 5,
          ),
          InkWell(
            onTap: () {
              showLanguageSheet();
            },
            child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    border: Border.all(color: Theme.of(context).primaryColor)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    pro.languageCode == "en" ? "English" : "Arabic",
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                )),
          ),
          SizedBox(
            height: 25,
          ),
          Text("Theming", style: Theme.of(context).textTheme.bodySmall),
          SizedBox(
            height: 5,
          ),
          InkWell(
            onTap: () {
              showThemeSheet();
            },
            child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    border: Border.all(color: Theme.of(context).primaryColor)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    pro.themeMode == ThemeMode.light ? "Light" : "Dark",
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                )),
          ),
        ],
      ),
    );
  }

  void showThemeSheet() {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return ShowThemeBottomSheet();
      },
    );
  }

  void showLanguageSheet() {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return ShowLanguageSheet();
        });
  }
}
