import 'package:get/get.dart';

import '../views/index.dart';
import '../app/index.dart';
part './app_routes.dart';

class AppPages {
  static String init = Routes.splash;

  static GetPage notFoundRoute = GetPage(
    name: Routes.notFound,
    page: () => const NotFound(),
    title: 'NotFound',
  );

  static final pages = [
    GetPage(
      name: Routes.splash,
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
      name: Routes.logPage,
      page: () => const HomePage(),
      title: 'HomePage',
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
