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
    on<FetchData>((event, emit) => fetch(event, emit));
    on<FilterData>((event, emit) => filter(event, emit));
  }

  Future<void> fetch(
      FetchData event, Emitter<HomeScreenState> emit) async {
    emit(const HomeScreenState.loading());
    try {
      TvShowResponse showResponse = await service.getShows(TvShowRequest());
      if (emit.isDone) {}
      emit(HomeScreenState.loaded(showResponse));
    } on ApiException catch (e) {
      emit(HomeScreenState.error(e.toString()));
    }
  }

  Future<void> filter(FilterData event, Emitter<HomeScreenState> emit,
      {String value = ""}) async {
    emit(const HomeScreenState.loading());
    try {
      TvShowResponse items = await service.getShows(TvShowRequest());
      final filteredList = searchItem(event.value, items);
      emit(HomeScreenState.loaded(filteredList));
    } on ApiException catch (e) {
      emit(HomeScreenState.error(e.toString()));
    }
  }

  TvShowResponse searchItem(String value, TvShowResponse shows) {
    return TvShowResponse(
        showList: shows.showList!
            .where((element) =>
                element.show!.name!.toLowerCase().contains(value.toLowerCase()))
            .toList());
  }
}
