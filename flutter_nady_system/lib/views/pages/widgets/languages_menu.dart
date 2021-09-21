import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:flutter_nady_system/app/index.dart';

class LanguageMenu extends GetWidget<AppController> {
  const LanguageMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<Locale>(
        color: Colors.black,
        child: const Icon(Icons.menu),
        itemBuilder: (context) => [
              ...languages.map(
                (lang) => PopupMenuItem<Locale>(
                  value: lang.locale,
                  child: Row(
                    children: [
                      Text(lang.imoje),
                      const SizedBox(width: 10),
                      Text(lang.name),
                    ],
                  ),
                ),
              ),
              //const PopupMenuDivider(),
            ],
        // ignore: avoid_print
        onSelected: (i) => controller.locale = i);
  }
}

List<Language> languages = [
  Language(
    name: "English",
    locale: const Locale("en_US"),
    imoje: "🇺🇸",
  ),
  Language(
    name: "عربى",
    locale: const Locale("ar_AR"),
    imoje: "🇾🇪",
  ),
  Language(
    name: "Française",
    locale: const Locale("fr_FR"),
    imoje: "🇫🇷",
  ),
];

class Language {
  String name;
  Locale locale;
  String imoje;
  Language({
    required this.name,
    required this.locale,
    required this.imoje,
  });
}
