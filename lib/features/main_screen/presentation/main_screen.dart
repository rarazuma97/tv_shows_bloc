import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:tv_show_bloc/app/utils/app_colors.dart';
import 'package:tv_show_bloc/features/home_screen/bloc/home_screen_bloc.dart';
import 'package:tv_show_bloc/features/main_screen/bloc/cubit/bottom_bar_cubit.dart';
import 'package:tv_show_bloc/features/main_screen/bloc/cubit/tab_bar_state.dart';
import 'package:tv_show_bloc/features/main_screen/presentation/widgets/bottom_nav_bar.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  void initState() {
    context.read<HomeScreenBloc>().add(const HomeScreenEvent.fetch());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, size) {
      return BlocBuilder<BottomBarCubit, TabBarState>(
        builder: (context, state) {
          return Scaffold(
            resizeToAvoidBottomInset: true,
            backgroundColor: AppColors.primary,
            body: state.selectedTab,
            bottomNavigationBar:
                size.deviceScreenType == DeviceScreenType.desktop
                    ? const SizedBox.shrink()
                    : const BottomNavBarCustom(),
          );
        },
      );
    });
  }
}
