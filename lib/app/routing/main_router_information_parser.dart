import 'package:flutter/material.dart';
import 'package:tv_show_bloc/app/routing/main_navigation.dart';
import 'package:tv_show_bloc/app/routing/main_navigation_stack.dart';
import 'package:tv_show_bloc/app/routing/routes.dart';

class MainRouterInformationParser
    extends RouteInformationParser<MainNavigationStack> {
  @override
  Future<MainNavigationStack> parseRouteInformation(
      RouteInformation routeInformation) async {
    final location = routeInformation.uri;
    var items = <MainNavigation>[];
    final uri = location;
    if (uri.pathSegments.isEmpty) {
      items = [const MainNavigation.main()];
    }
    for (var i = 0; i < uri.pathSegments.length; i++) {
      final fullSegment = uri.pathSegments[i];
      final splitSegment = fullSegment.split('-');
      final segment = splitSegment.first;
      switch (segment) {
        case Routes.MAIN:
          items.add(const MainNavigation.main());
          break;
        case Routes.SETTINGS:
          items.add(const MainNavigation.settings());
          break;
        case Routes.HOME:
          items.add(const MainNavigation.home());
          break;
        default:
          items = [const MainNavigation.main()];
          break;
      }
    }

    return MainNavigationStack(items);
  }

  @override
  RouteInformation restoreRouteInformation(MainNavigationStack configuration) {
    final location = configuration.items.fold<String>(
      '',
      (previousValue, element) {
        return previousValue +
            element.when(
              main: () => '/${Routes.MAIN}',
              home: () => '/${Routes.HOME}',
              settings: () => '/${Routes.SETTINGS}',
              showDetail: (_) => '/${Routes.SHOW_DETAIL}',
            );
      },
    );
    return RouteInformation(uri: Uri.parse(location));
  }
}
