import 'package:get/get.dart';

import '../views/index.dart';
import '../app/index.dart';
part './app_routes.dart';

class AppPages {
  static String init = Routes.splashPage;

  static GetPage notFoundRoute = GetPage(
    name: Routes.notFoundPage,
    page: () => const NotFound(),
    title: 'NotFound',
  );

  static final pages = [
    GetPage(
      name: Routes.splashPage,
      page: () => const SplashPage(),
      title: 'SplashPage',
      binding: AppBinding(),
    ),
    GetPage(
      name: Routes.logPage,
      page: () => const LogPage(),
      title: 'LogPage',
      binding: AuthBinding(),
    ),
    GetPage(
      name: Routes.homePage,
      page: () => const HomePage(),
      title: 'HomePage',
    ),
    GetPage(
      name: Routes.neumorphicEx,
      page: () => const NeumorphicEx(),
      title: 'neumorphicEx',
    ),
    GetPage(
      name: Routes.descoveryView,
      page: () => const DescoveryView(),
      title: 'DescoveryView',
    ),
    GetPage(
      name: Routes.logoPaint,
      page: () => const LogoPaint(),
      title: 'LogoPaint',
    ),
  ];
}

// GetPage(
//   name: '/simple-navigation',
//   title: 'Simple Navigation',
//   page: () => SimpleNavigationView1(),
//   binding: SimpleNavigationBinding1(),
// customTransition: SizeTransitions(),
//   children: [
//     GetPage(
//       name: '/2',
//       page: () => SimpleNavigationView2(),
//       binding: SimpleNavigationBinding2(),
//     )
//   ],
// ),
