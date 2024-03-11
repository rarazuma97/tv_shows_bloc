import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:http_services/http_services.dart';
import 'package:tv_show_bloc/features/home_screen/models/request/tv_show_request.dart';
import 'package:tv_show_bloc/features/home_screen/models/response/tv_show_response.dart';
import 'package:tv_show_bloc/features/home_screen/service/home_screen_service.dart';

part 'home_screen_bloc.freezed.dart';
part 'home_screen_event.dart';
part 'home_screen_state.dart';

class HomeScreenBloc extends Bloc<HomeScreenEvent, HomeScreenState> {
  final HomeScreenService service;

  HomeScreenBloc(this.service) : super(const _Initial()) {
    on<HomeScreenEvent>(fetch);
    }


    void fetch(HomeScreenEvent event,  Emitter<HomeScreenState> emit) async{
       emit(const HomeScreenState.loading());
      try {
        TvShowResponse showResponse = await service.getShows(TvShowRequest());
        emit(HomeScreenState.loaded(showResponse));
      } on ApiException catch (e) {
        emit(HomeScreenState.error(e.toString()));
    }
  }

}
