part of './app_pages.dart';

abstract class Routes {
  static final notFoundPage = 'NotFoundPage'.nameToRoute();
  static final splashPage = 'SplashPage'.nameToRoute();
  static final logPage = 'LogPage'.nameToRoute();
  static final homePage = 'HomePage'.nameToRoute();
}

extension RoutesExtension on String {
  String nameToRoute() => '/${toLowerCase()}';
}
