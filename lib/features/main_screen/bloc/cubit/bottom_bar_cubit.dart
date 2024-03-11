import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:tv_show_bloc/features/home_screen/presentation/home_screen.dart';
import 'package:tv_show_bloc/features/main_screen/bloc/cubit/tab_bar_state.dart';
import 'package:tv_show_bloc/features/settings_screen/presentation/settings_screen.dart';


class BottomBarCubit extends Cubit<TabBarState> {
  BottomBarCubit(super.initialState);

  void selectTab(int selectedIndex) {
    emit(TabBarState(selectedTab: switchPage(selectedIndex)));
  }

  Widget switchPage(int i) {
    switch (i) {
      case 0:
        return const HomeScreen();
      case 1:
        return const SettingsScreen();
     }
      return Container();
  } 
}

