part of 'search_bar_cubit.dart';

@freezed
class SearchBarState with _$SearchBarState {
  const factory SearchBarState.initial() = _Initial;
  const factory SearchBarState.loading() = _Loading;
  const factory SearchBarState.loaded(List<TvShowItem> show) = _Loaded;
}
