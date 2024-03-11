import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tv_show_bloc/app/dependecy_injection/dependency_factory.dart';
import 'package:tv_show_bloc/app/dependecy_injection/dio_wrappers.dart';
import 'package:tv_show_bloc/features/home_screen/bloc/home_screen_bloc.dart';
import 'package:tv_show_bloc/features/home_screen/presentation/home_screen.dart';
import 'package:tv_show_bloc/features/main_screen/bloc/cubit/bottom_bar_cubit.dart';
import 'package:tv_show_bloc/features/main_screen/bloc/cubit/tab_bar_state.dart';

class DependencyProvider extends StatefulWidget {
  final Widget child;
  final DependencyFactory dependencyFactory;

  const DependencyProvider(
      {super.key, required this.child, required this.dependencyFactory});

  @override
  DependencyProviderState createState() => DependencyProviderState();
}

class DependencyProviderState extends State<DependencyProvider> {
  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider<DioForApi>(
          create: (_) => widget.dependencyFactory.createDioForApi(),
        ),
         RepositoryProvider.value(value: widget.dependencyFactory.createHomeScreenBloc),
         RepositoryProvider.value(value: widget.dependencyFactory.createHomeScreenService),
      ],
      child: Builder(
        builder: (context) {
          return MultiBlocProvider(
            providers:  [
              BlocProvider.value(value: BottomBarCubit(TabBarState(selectedTab: const HomeScreen()))),
              BlocProvider(
              lazy: false,
              create:RepositoryProvider.of<BlocCreator<HomeScreenBloc>>(context),
            ),
            ],
            child: widget.child,
          );
        },
      ),
    );
  }
}
