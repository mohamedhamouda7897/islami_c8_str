import 'package:flutter/material.dart';
import 'package:islami_c8_str/my_theme.dart';
import 'package:islami_c8_str/providers/my_provider.dart';
import 'package:provider/provider.dart';

class ShowThemeBottomSheet extends StatelessWidget {
  const ShowThemeBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var pro = Provider.of<MyProvider>(context);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          InkWell(
            onTap: () {
              pro.changeTheme(ThemeMode.dark);
              Navigator.pop(context);
            },
            child: Row(
              children: [
                Text(
                  "Dark",
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      color: pro.themeMode == ThemeMode.light
                          ? Colors.black54
                          : MyThemeData.yellowColor,
                      fontSize: 28,
                      fontWeight: FontWeight.w200),
                ),
                Spacer(),
                Icon(
                  Icons.done,
                  color: pro.themeMode == ThemeMode.light
                      ? Colors.black54
                      : MyThemeData.yellowColor,
                  size: 30,
                )
              ],
            ),
          ),
          InkWell(
            onTap: () {
              pro.changeTheme(ThemeMode.light);
              Navigator.pop(context);
            },
            child: Row(
              children: [
                Text("Light",
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color: pro.themeMode == ThemeMode.light
                            ? Theme.of(context).primaryColor
                            : Colors.white,
                        fontSize: 28,
                        fontWeight: FontWeight.w200)),
                Spacer(),
                Icon(
                  Icons.done,
                  color: pro.themeMode == ThemeMode.light
                      ? Theme.of(context).primaryColor
                      : Colors.white,
                  size: 30,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
