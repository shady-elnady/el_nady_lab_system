import 'package:flutter/material.dart';
import 'package:flutter_nady_system/views/pages/widgets/index.dart';
import 'package:get/get.dart';

import '../utils/index.dart';
import '../../../app/index.dart';

class LanguageMenu extends GetWidget<AppController> {
  const LanguageMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<Locale>(
      color: Theme.of(context).canvasColor.withOpacity(0),
      child: NeumorphicDesign(
        height1: 55,
        width1: 55,
        color: Theme.of(context).canvasColor,
        offsetB: const Offset(-2, -2),
        offsetW: const Offset(2, 2),
        bLevel: 5.0,
        iconData: Icons.language,
        iconSize: 30.0,
      ),
      // Icon(
      //   Icons.language,
      //   color: Theme.of(context).primaryColor,
      // ),
      itemBuilder: (context) => [
        ...languages.map(
          (lang) => PopupMenuItem<Locale>(
            value: lang.locale,
            child: Row(
              children: [
                Text(
                  lang.imoji,
                  style: const TextStyle(
                    fontFamily: Fonts.notoColorEmoji,
                  ),
                ),
                const SizedBox(width: 10),
                Text(
                  lang.name,
                  style: TextStyle(color: Theme.of(context).primaryColor),
                ),
              ],
            ),
          ),
        ),
        // const PopupMenuDivider(
        //   height: 10,
        // ),
      ],
      onSelected: (i) => controller.locale = i,
    );
  }
}

List<Language> languages = [
  Language(
    name: "English",
    locale: english,
    imoji: "🇺🇸",
  ),
  Language(
    name: "عربى",
    locale: arabic,
    imoji: "🇾🇪",
  ),
  Language(
    name: "Française",
    locale: frensh,
    imoji: "🇫🇷",
  ),
];
