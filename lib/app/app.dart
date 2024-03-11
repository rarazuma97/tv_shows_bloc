import 'package:flutter/material.dart';
import 'package:tv_show_bloc/app/dependecy_injection/dependency_factory.dart';
import 'package:tv_show_bloc/app/dependecy_injection/dependency_factory_impl.dart';
import 'package:tv_show_bloc/app/dependecy_injection/dependency_provider.dart';
import 'package:tv_show_bloc/app/routing/main_navigation.dart';
import 'package:tv_show_bloc/app/routing/main_navigation_stack.dart';
import 'package:tv_show_bloc/app/routing/main_router_delegate.dart';
import 'package:tv_show_bloc/app/routing/main_router_information_parser.dart';
import 'package:tv_show_bloc/app/utils/layout_utils.dart';

class App extends StatelessWidget {
  static final navigatorKey = GlobalKey<NavigatorState>();
  static final mainNavigationDelegate =
      MainRouterDelegate(MainNavigationStack([const MainNavigation.main()]));
  static final mainNavigationParser = MainRouterInformationParser();

  final DependencyFactory dependencyFactory;

  const App({
    super.key,
    this.dependencyFactory = const DependencyFactoryImpl(),
  });

  @override
  Widget build(BuildContext context) {
    return DependencyProvider(
      dependencyFactory: const DependencyFactoryImpl(),
      child: Builder(
        builder: (context) => MaterialApp.router(
          routerDelegate: mainNavigationDelegate,
          routeInformationParser: mainNavigationParser,
          themeMode: ThemeMode.light,
          builder: (context, child) {
            LayoutUtils.updateScaleFactor(
              context,
              existingFactor: MediaQuery.of(context).textScaler.scale(8),
            );
            return MediaQuery(
              data: MediaQuery.of(context).copyWith(
                textScaler: MediaQuery.of(context).textScaler,
              ),
              child: child!,
            );
          },
        ),
      ),
    );
  }
}
