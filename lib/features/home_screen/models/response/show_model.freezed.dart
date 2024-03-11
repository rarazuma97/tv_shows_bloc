// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'show_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ShowModel _$ShowModelFromJson(Map<String, dynamic> json) {
  return _ShowModel.fromJson(json);
}

/// @nodoc
mixin _$ShowModel {
  int? get id => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  String? get language => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  int? get runtime => throw _privateConstructorUsedError;
  int? get averageRuntime => throw _privateConstructorUsedError;
  String? get premiered => throw _privateConstructorUsedError;
  String? get ended => throw _privateConstructorUsedError;
  String? get officialSite => throw _privateConstructorUsedError;
  RatingModel? get rating => throw _privateConstructorUsedError;
  int? get weight => throw _privateConstructorUsedError;
  ImageModel? get image => throw _privateConstructorUsedError;
  String? get summary => throw _privateConstructorUsedError;
  int? get updated => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShowModelCopyWith<ShowModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShowModelCopyWith<$Res> {
  factory $ShowModelCopyWith(ShowModel value, $Res Function(ShowModel) then) =
      _$ShowModelCopyWithImpl<$Res, ShowModel>;
  @useResult
  $Res call(
      {int? id,
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
      int? updated});

  $RatingModelCopyWith<$Res>? get rating;
  $ImageModelCopyWith<$Res>? get image;
}

/// @nodoc
class _$ShowModelCopyWithImpl<$Res, $Val extends ShowModel>
    implements $ShowModelCopyWith<$Res> {
  _$ShowModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? url = freezed,
    Object? name = freezed,
    Object? type = freezed,
    Object? language = freezed,
    Object? status = freezed,
    Object? runtime = freezed,
    Object? averageRuntime = freezed,
    Object? premiered = freezed,
    Object? ended = freezed,
    Object? officialSite = freezed,
    Object? rating = freezed,
    Object? weight = freezed,
    Object? image = freezed,
    Object? summary = freezed,
    Object? updated = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      runtime: freezed == runtime
          ? _value.runtime
          : runtime // ignore: cast_nullable_to_non_nullable
              as int?,
      averageRuntime: freezed == averageRuntime
          ? _value.averageRuntime
          : averageRuntime // ignore: cast_nullable_to_non_nullable
              as int?,
      premiered: freezed == premiered
          ? _value.premiered
          : premiered // ignore: cast_nullable_to_non_nullable
              as String?,
      ended: freezed == ended
          ? _value.ended
          : ended // ignore: cast_nullable_to_non_nullable
              as String?,
      officialSite: freezed == officialSite
          ? _value.officialSite
          : officialSite // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as RatingModel?,
      weight: freezed == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as ImageModel?,
      summary: freezed == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String?,
      updated: freezed == updated
          ? _value.updated
          : updated // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RatingModelCopyWith<$Res>? get rating {
    if (_value.rating == null) {
      return null;
    }

    return $RatingModelCopyWith<$Res>(_value.rating!, (value) {
      return _then(_value.copyWith(rating: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ImageModelCopyWith<$Res>? get image {
    if (_value.image == null) {
      return null;
    }

    return $ImageModelCopyWith<$Res>(_value.image!, (value) {
      return _then(_value.copyWith(image: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ShowModelImplCopyWith<$Res>
    implements $ShowModelCopyWith<$Res> {
  factory _$$ShowModelImplCopyWith(
          _$ShowModelImpl value, $Res Function(_$ShowModelImpl) then) =
      __$$ShowModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
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
      int? updated});

  @override
  $RatingModelCopyWith<$Res>? get rating;
  @override
  $ImageModelCopyWith<$Res>? get image;
}

/// @nodoc
class __$$ShowModelImplCopyWithImpl<$Res>
    extends _$ShowModelCopyWithImpl<$Res, _$ShowModelImpl>
    implements _$$ShowModelImplCopyWith<$Res> {
  __$$ShowModelImplCopyWithImpl(
      _$ShowModelImpl _value, $Res Function(_$ShowModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? url = freezed,
    Object? name = freezed,
    Object? type = freezed,
    Object? language = freezed,
    Object? status = freezed,
    Object? runtime = freezed,
    Object? averageRuntime = freezed,
    Object? premiered = freezed,
    Object? ended = freezed,
    Object? officialSite = freezed,
    Object? rating = freezed,
    Object? weight = freezed,
    Object? image = freezed,
    Object? summary = freezed,
    Object? updated = freezed,
  }) {
    return _then(_$ShowModelImpl(
      freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == runtime
          ? _value.runtime
          : runtime // ignore: cast_nullable_to_non_nullable
              as int?,
      freezed == averageRuntime
          ? _value.averageRuntime
          : averageRuntime // ignore: cast_nullable_to_non_nullable
              as int?,
      freezed == premiered
          ? _value.premiered
          : premiered // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == ended
          ? _value.ended
          : ended // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == officialSite
          ? _value.officialSite
          : officialSite // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as RatingModel?,
      freezed == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int?,
      freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as ImageModel?,
      freezed == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == updated
          ? _value.updated
          : updated // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ShowModelImpl implements _ShowModel {
  _$ShowModelImpl(
      this.id,
      this.url,
      this.name,
      this.type,
      this.language,
      this.status,
      this.runtime,
      this.averageRuntime,
      this.premiered,
      this.ended,
      this.officialSite,
      this.rating,
      this.weight,
      this.image,
      this.summary,
      this.updated);

  factory _$ShowModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ShowModelImplFromJson(json);

  @override
  final int? id;
  @override
  final String? url;
  @override
  final String? name;
  @override
  final String? type;
  @override
  final String? language;
  @override
  final String? status;
  @override
  final int? runtime;
  @override
  final int? averageRuntime;
  @override
  final String? premiered;
  @override
  final String? ended;
  @override
  final String? officialSite;
  @override
  final RatingModel? rating;
  @override
  final int? weight;
  @override
  final ImageModel? image;
  @override
  final String? summary;
  @override
  final int? updated;

  @override
  String toString() {
    return 'ShowModel(id: $id, url: $url, name: $name, type: $type, language: $language, status: $status, runtime: $runtime, averageRuntime: $averageRuntime, premiered: $premiered, ended: $ended, officialSite: $officialSite, rating: $rating, weight: $weight, image: $image, summary: $summary, updated: $updated)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShowModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.runtime, runtime) || other.runtime == runtime) &&
            (identical(other.averageRuntime, averageRuntime) ||
                other.averageRuntime == averageRuntime) &&
            (identical(other.premiered, premiered) ||
                other.premiered == premiered) &&
            (identical(other.ended, ended) || other.ended == ended) &&
            (identical(other.officialSite, officialSite) ||
                other.officialSite == officialSite) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.summary, summary) || other.summary == summary) &&
            (identical(other.updated, updated) || other.updated == updated));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      url,
      name,
      type,
      language,
      status,
      runtime,
      averageRuntime,
      premiered,
      ended,
      officialSite,
      rating,
      weight,
      image,
      summary,
      updated);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShowModelImplCopyWith<_$ShowModelImpl> get copyWith =>
      __$$ShowModelImplCopyWithImpl<_$ShowModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ShowModelImplToJson(
      this,
    );
  }
}

abstract class _ShowModel implements ShowModel {
  factory _ShowModel(
      final int? id,
      final String? url,
      final String? name,
      final String? type,
      final String? language,
      final String? status,
      final int? runtime,
      final int? averageRuntime,
      final String? premiered,
      final String? ended,
      final String? officialSite,
      final RatingModel? rating,
      final int? weight,
      final ImageModel? image,
      final String? summary,
      final int? updated) = _$ShowModelImpl;

  factory _ShowModel.fromJson(Map<String, dynamic> json) =
      _$ShowModelImpl.fromJson;

  @override
  int? get id;
  @override
  String? get url;
  @override
  String? get name;
  @override
  String? get type;
  @override
  String? get language;
  @override
  String? get status;
  @override
  int? get runtime;
  @override
  int? get averageRuntime;
  @override
  String? get premiered;
  @override
  String? get ended;
  @override
  String? get officialSite;
  @override
  RatingModel? get rating;
  @override
  int? get weight;
  @override
  ImageModel? get image;
  @override
  String? get summary;
  @override
  int? get updated;
  @override
  @JsonKey(ignore: true)
  _$$ShowModelImplCopyWith<_$ShowModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
