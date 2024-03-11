import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:http_services/http_services.dart';
import 'package:tv_show_bloc/features/home_screen/models/response/show_model.dart';

part 'tv_show_response.freezed.dart';
part 'tv_show_response.g.dart';

@freezed
class TvShowResponse extends ResponseBase with _$TvShowResponse {
  factory TvShowResponse({
    @Default(<TvShowItem>[]) List<TvShowItem>? showList,
  }) = _TvShowResponse;

  factory TvShowResponse.fromJson(Map<String, dynamic> json) =>
      _$TvShowResponseFromJson(json);
}

@freezed
class TvShowItem with _$TvShowItem {
  factory TvShowItem(
    double? score,
    ShowModel? show,
  ) = _TvShowItem;

  factory TvShowItem.fromJson(Map<String, dynamic> json) =>
      _$TvShowItemFromJson(json);
}
