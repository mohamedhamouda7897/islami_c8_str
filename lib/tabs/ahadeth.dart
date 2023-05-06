import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_c8_str/hadeth_details.dart';
import 'package:islami_c8_str/providers/hadeth_provider.dart';
import 'package:provider/provider.dart';

class AhadethTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => HadethProvider()..loadHadethFile(),
      builder: (context, child) {
        var provider = Provider.of<HadethProvider>(context);
        return Column(
          children: [
            Image.asset("assets/images/hadeth_bg.png"),
            Divider(
              thickness: 2,
              color:
                  Theme.of(context).colorScheme.brightness == Brightness.light
                      ? Theme.of(context).primaryColor
                      : Theme.of(context).colorScheme.onSecondary,
            ),
            Text(
              AppLocalizations.of(context)!.ahadeth,
              style:
                  Theme.of(context).textTheme.bodySmall!.copyWith(fontSize: 26),
            ),
            Divider(
              thickness: 2,
              color:
                  Theme.of(context).colorScheme.brightness == Brightness.light
                      ? Theme.of(context).primaryColor
                      : Theme.of(context).colorScheme.onSecondary,
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
                          arguments: provider.allAhadeth[index]);
                    },
                    child: Text(provider.allAhadeth[index].title,
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.bodySmall),
                  );
                },
                itemCount: provider.allAhadeth.length,
              ),
            ),
          ],
        );
      },
    );
  }
}
