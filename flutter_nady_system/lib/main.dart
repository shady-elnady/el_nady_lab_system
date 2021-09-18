import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';

import 'app/index.dart';
import 'routes/app_pages.dart';
import 'themes/index.dart';
import 'utils/translation.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(statusBarColor: Colors.transparent),
  );

  if (!GetPlatform.isDesktop) await Firebase.initializeApp();
  // if (kIsWeb) {
  //   // initialiaze the facebook javascript SDK
  //   FacebookAuth.i.webInitialize(
  //     appId: "474013263826506", //<-- YOUR APP_ID
  //     cookie: true,
  //     xfbml: true,
  //     version: "v9.0",
  //   );
  // }

  // await initServices(); /// AWAIT SERVICES INITIALIZATION.

  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Application",
    translations: Translation(),
    theme: appThemeData,
    darkTheme: darkThemeData,
    locale: const Locale('en', 'US'),
    fallbackLocale: const Locale('en', 'US'),
    defaultTransition: Transition.fade,
    initialBinding: AppBinding(),
    initialRoute: Routes.splash,
    getPages: AppPages.pages,
    unknownRoute: AppPages.notFoundRoute,
  ));
}
