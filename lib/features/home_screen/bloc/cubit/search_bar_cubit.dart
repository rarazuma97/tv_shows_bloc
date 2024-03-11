import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tv_show_bloc/features/home_screen/bloc/home_screen_bloc.dart';
import 'package:tv_show_bloc/features/home_screen/models/response/tv_show_response.dart';

part 'search_bar_state.dart';
part 'search_bar_cubit.freezed.dart';

class SearchBarCubit extends Cubit<HomeScreenState> {
  TvShowResponse shows;
  SearchBarCubit(this.shows) : super(const HomeScreenState.initial());

  Stream<HomeScreenState> searchItem(String value, TvShowResponse shows) async* {
    yield const HomeScreenState.loading();
    final showListFiltered = shows.showList!
        .where((element) =>
            element.show!.name!.toLowerCase().contains(value.toLowerCase()))
        .toList();
    
    yield HomeScreenState.loaded(TvShowResponse(showList: showListFiltered));
  }
}
