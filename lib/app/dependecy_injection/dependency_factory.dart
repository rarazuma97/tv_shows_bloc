import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http_services/http_services.dart';
import 'package:tv_show_bloc/app/dependecy_injection/dio_wrappers.dart';
import 'package:tv_show_bloc/features/home_screen/bloc/home_screen_bloc.dart';
import 'package:tv_show_bloc/features/home_screen/service/home_screen_service.dart';

typedef BlocCreator<T extends Bloc> = T Function(BuildContext context);
typedef ServiceCreator<T extends HttpServiceBase> = T Function(
    BuildContext context);

abstract class DependencyFactory {
  const DependencyFactory();
  DioForApi createDioForApi();
  
  BlocCreator<HomeScreenBloc> get createHomeScreenBloc;
  ServiceCreator<HomeScreenService> get createHomeScreenService;
}
