import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tv_show_bloc/features/home_screen/models/response/tv_show_response.dart';

part 'main_navigation.freezed.dart';

@freezed
abstract class MainNavigation with _$MainNavigation {
  const factory MainNavigation.main() = _Main;
  const factory MainNavigation.home() = _Home;
  const factory MainNavigation.settings() = _Settings;
  const factory MainNavigation.showDetail(TvShowItem show) = _ShowDetail;

  static void push(BuildContext context, MainNavigation page) =>
      MainNavigationNotification.push(page).dispatch(context);

  static void pop(BuildContext context) =>
      const MainNavigationNotification.pop().dispatch(context);

  static void replace(BuildContext context, List<MainNavigation> stack) =>
      MainNavigationNotification.replace(stack).dispatch(context);

  static void popUntil(BuildContext context, MainNavigation page) =>
      MainNavigationNotification.popUntil(page).dispatch(context);
}

@freezed
abstract class MainNavigationNotification extends Notification
    with _$MainNavigationNotification {
  const MainNavigationNotification._();
  const factory MainNavigationNotification.push(MainNavigation page) =
      _MainNavigationPush;
  const factory MainNavigationNotification.pop() = _MainNavigationPop;
  const factory MainNavigationNotification.replace(List<MainNavigation> stack) =
      _MainNavigationReplace;
  const factory MainNavigationNotification.popUntil(MainNavigation page) =
      _MainNavigationPopUntil;
}
