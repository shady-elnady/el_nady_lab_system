import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:get/get.dart';

import 'views/index.dart';
import 'app/index.dart';
import 'routes/app_pages.dart';
import 'themes/app_theme.dart';
import 'tools/translation.dart';

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
  // check if is running on Web
  if (kIsWeb) {
    // initialiaze the facebook javascript SDK
    FacebookAuth.i.webInitialize(
      appId: "345531593739834", //<-- YOUR APP_ID
      cookie: true,
      xfbml: true,
      version: "v9.0",
    );
    // ignore: avoid_print
    print(
      "FacebookAuth.i.isWebSdkInitialized : ${FacebookAuth.i.isWebSdkInitialized}",
    );
  }

  // await initServices(); /// AWAIT SERVICES INITIALIZATION.

  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "El Nady System",
      translations: Translation(),
      themeMode: AppController().themeMode,
      theme: AppController().theme,
      darkTheme: darkThemeData,
      locale: AppController().locale,
      fallbackLocale: const Locale('en', 'US'),
      defaultTransition: Transition.fade,
      initialBinding: AppBinding(),
      initialRoute: Routes.splashPage,
      getPages: AppPages.pages,
      unknownRoute: AppPages.notFoundRoute,
      home: const SplashPage(),
    ),
  );
}
