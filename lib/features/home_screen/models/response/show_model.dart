import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tv_show_bloc/features/home_screen/models/response/image_model.dart';
import 'package:tv_show_bloc/features/home_screen/models/response/rating_model.dart';

part 'show_model.freezed.dart';
part 'show_model.g.dart';

@freezed
class ShowModel with _$ShowModel {
  factory ShowModel(
    int? id,
    String? url,
    String? name,
    String? type,
    String? language,
    String? status,
    int? runtime,
    int? averageRuntime,
    String? premiered,
    String? ended,
    String? officialSite,
    RatingModel? rating,
    int? weight,
    ImageModel? image,
    String? summary,
    int? updated,
  ) = _ShowModel;

  factory ShowModel.fromJson(Map<String, dynamic> json) =>
      _$ShowModelFromJson(json);
}
