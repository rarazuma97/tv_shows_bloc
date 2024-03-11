import 'package:flutter/material.dart';
import 'package:tv_show_bloc/app/app.dart';
import 'package:tv_show_bloc/app/routing/main_navigation.dart';
import 'package:tv_show_bloc/app/routing/main_navigation_stack.dart';
import 'package:tv_show_bloc/features/home_screen/presentation/home_screen.dart';
import 'package:tv_show_bloc/features/main_screen/presentation/main_screen.dart';
import 'package:tv_show_bloc/features/settings_screen/presentation/settings_screen.dart';
import 'package:tv_show_bloc/features/show_detail/presentation/show_detail_screen.dart';

class MainRouterDelegate extends RouterDelegate<MainNavigationStack>
    with ChangeNotifier, PopNavigatorRouterDelegateMixin {
  final MainNavigationStack stack;

  @override
  final GlobalKey<NavigatorState> navigatorKey = App.navigatorKey;

  MainRouterDelegate(this.stack) {
    stack.addListener(notifyListeners);
  }

  @override
  void dispose() {
    stack.removeListener(notifyListeners);
    super.dispose();
  }

  bool _onNotification(MainNavigationNotification notification) {
    notification.when(
      push: (page) => stack.push(page),
      pop: () => stack.pop(),
      replace: (newStack) => stack.items = newStack,
      popUntil: (page) => stack.items = _getPopUntilStack(page),
    );
    return true;
  }

  List<MainNavigation> _getPopUntilStack(MainNavigation page) {
    final index = stack.items.lastIndexOf(page);
    if (index == stack.items.length - 1) {
      return stack.items;
    }

    if (index >= 0) {
      return stack.items.sublist(0, index + 1);
    }

    return [];
  }

  @override
  MainNavigationStack? get currentConfiguration => stack;

  @override
  Widget build(BuildContext context) {
    return NotificationListener<MainNavigationNotification>(
      onNotification: _onNotification,
      child: Navigator(
        pages: [
          for (final entry in stack.items.asMap().entries)
            entry.value.when(
              main: () => MaterialPage(
                key: ValueKey('mainScreen${entry.key}'),
                child: const MainScreen(),
              ),
              home: () => MaterialPage(
                key: ValueKey('homeScreen${entry.key}'),
                child: const HomeScreen(),
              ),
              settings: () => MaterialPage(
                key: ValueKey('settings${entry.key}'),
                child: const SettingsScreen(),
              ),
              showDetail: (show) => MaterialPage(
                key: ValueKey('showDetail${entry.key}'),
                child: ShowDetailScreen(
                  show: show,
                ),
              ),
            )
        ],
        key: navigatorKey,
        onPopPage: (route, result) {
          if (!route.didPop(result)) {
            return false;
          }
          stack.pop();
          return true;
        },
      ),
    );
  }

  @override
  Future<void> setNewRoutePath(MainNavigationStack configuration) async {
    stack.items = configuration.items;
  }
}
