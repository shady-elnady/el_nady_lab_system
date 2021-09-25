import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utils/index.dart';
import '../../../app/index.dart';

class LanguageMenu extends GetWidget<AppController> {
  const LanguageMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<Locale>(
      color: Theme.of(context).canvasColor,
      child: Icon(
        Icons.language,
        color: Theme.of(context).primaryColor,
      ),
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
        const PopupMenuDivider(
          height: 10,
        ),
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
