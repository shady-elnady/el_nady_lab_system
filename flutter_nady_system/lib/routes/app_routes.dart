part of './app_pages.dart';

abstract class Routes {
  static final notFound = 'NotFound'.nameToRoute();
  static final splash = 'SplashPage'.nameToRoute();
  static final logPage = 'LogPage'.nameToRoute();
  static final homePage = 'HomePage'.nameToRoute();
}

extension RoutesExtension on String {
  String nameToRoute() => '/${toLowerCase()}';
}
