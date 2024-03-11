import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http_services/http_services.dart';
import 'package:tv_show_bloc/app/constants/app_config.dart';
import 'package:tv_show_bloc/app/dependecy_injection/dependency_factory.dart';
import 'package:tv_show_bloc/app/dependecy_injection/dio_wrappers.dart';
import 'package:tv_show_bloc/features/home_screen/bloc/home_screen_bloc.dart';
import 'package:tv_show_bloc/features/home_screen/service/home_screen_service.dart';

class DependencyFactoryImpl extends DependencyFactory {
  const DependencyFactoryImpl();

  @override
  DioForApi createDioForApi() => DioForApi(
        Dio(
          BaseOptions(
            baseUrl: AppConfig.apiBaseUrl,
            contentType: 'application/json',
          ),
        )..interceptors.addAll(
            [
              Interceptor(),
            ],
          ),
      );

  @override
  BlocCreator<HomeScreenBloc> get createHomeScreenBloc => (context) =>
     HomeScreenBloc(RepositoryProvider.of<ServiceCreator<HomeScreenService>>(context).call(context));

  @override
  ServiceCreator<HomeScreenService> get createHomeScreenService => (context) => HomeScreenService(
      RepositoryProvider.of<DioForApi>(context).dio,
    );
}
