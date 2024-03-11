// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tv_show_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TvShowResponse _$TvShowResponseFromJson(Map<String, dynamic> json) {
  return _TvShowResponse.fromJson(json);
}

/// @nodoc
mixin _$TvShowResponse {
  List<TvShowItem>? get showList => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TvShowResponseCopyWith<TvShowResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TvShowResponseCopyWith<$Res> {
  factory $TvShowResponseCopyWith(
          TvShowResponse value, $Res Function(TvShowResponse) then) =
      _$TvShowResponseCopyWithImpl<$Res, TvShowResponse>;
  @useResult
  $Res call({List<TvShowItem>? showList});
}

/// @nodoc
class _$TvShowResponseCopyWithImpl<$Res, $Val extends TvShowResponse>
    implements $TvShowResponseCopyWith<$Res> {
  _$TvShowResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? showList = freezed,
  }) {
    return _then(_value.copyWith(
      showList: freezed == showList
          ? _value.showList
          : showList // ignore: cast_nullable_to_non_nullable
              as List<TvShowItem>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TvShowResponseImplCopyWith<$Res>
    implements $TvShowResponseCopyWith<$Res> {
  factory _$$TvShowResponseImplCopyWith(_$TvShowResponseImpl value,
          $Res Function(_$TvShowResponseImpl) then) =
      __$$TvShowResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<TvShowItem>? showList});
}

/// @nodoc
class __$$TvShowResponseImplCopyWithImpl<$Res>
    extends _$TvShowResponseCopyWithImpl<$Res, _$TvShowResponseImpl>
    implements _$$TvShowResponseImplCopyWith<$Res> {
  __$$TvShowResponseImplCopyWithImpl(
      _$TvShowResponseImpl _value, $Res Function(_$TvShowResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? showList = freezed,
  }) {
    return _then(_$TvShowResponseImpl(
      showList: freezed == showList
          ? _value._showList
          : showList // ignore: cast_nullable_to_non_nullable
              as List<TvShowItem>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TvShowResponseImpl implements _TvShowResponse {
  _$TvShowResponseImpl(
      {final List<TvShowItem>? showList = const <TvShowItem>[]})
      : _showList = showList;

  factory _$TvShowResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$TvShowResponseImplFromJson(json);

  final List<TvShowItem>? _showList;
  @override
  @JsonKey()
  List<TvShowItem>? get showList {
    final value = _showList;
    if (value == null) return null;
    if (_showList is EqualUnmodifiableListView) return _showList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'TvShowResponse(showList: $showList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TvShowResponseImpl &&
            const DeepCollectionEquality().equals(other._showList, _showList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_showList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TvShowResponseImplCopyWith<_$TvShowResponseImpl> get copyWith =>
      __$$TvShowResponseImplCopyWithImpl<_$TvShowResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TvShowResponseImplToJson(
      this,
    );
  }
}

abstract class _TvShowResponse implements TvShowResponse {
  factory _TvShowResponse({final List<TvShowItem>? showList}) =
      _$TvShowResponseImpl;

  factory _TvShowResponse.fromJson(Map<String, dynamic> json) =
      _$TvShowResponseImpl.fromJson;

  @override
  List<TvShowItem>? get showList;
  @override
  @JsonKey(ignore: true)
  _$$TvShowResponseImplCopyWith<_$TvShowResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TvShowItem _$TvShowItemFromJson(Map<String, dynamic> json) {
  return _TvShowItem.fromJson(json);
}

/// @nodoc
mixin _$TvShowItem {
  double? get score => throw _privateConstructorUsedError;
  ShowModel? get show => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TvShowItemCopyWith<TvShowItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TvShowItemCopyWith<$Res> {
  factory $TvShowItemCopyWith(
          TvShowItem value, $Res Function(TvShowItem) then) =
      _$TvShowItemCopyWithImpl<$Res, TvShowItem>;
  @useResult
  $Res call({double? score, ShowModel? show});

  $ShowModelCopyWith<$Res>? get show;
}

/// @nodoc
class _$TvShowItemCopyWithImpl<$Res, $Val extends TvShowItem>
    implements $TvShowItemCopyWith<$Res> {
  _$TvShowItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? score = freezed,
    Object? show = freezed,
  }) {
    return _then(_value.copyWith(
      score: freezed == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as double?,
      show: freezed == show
          ? _value.show
          : show // ignore: cast_nullable_to_non_nullable
              as ShowModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ShowModelCopyWith<$Res>? get show {
    if (_value.show == null) {
      return null;
    }

    return $ShowModelCopyWith<$Res>(_value.show!, (value) {
      return _then(_value.copyWith(show: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TvShowItemImplCopyWith<$Res>
    implements $TvShowItemCopyWith<$Res> {
  factory _$$TvShowItemImplCopyWith(
          _$TvShowItemImpl value, $Res Function(_$TvShowItemImpl) then) =
      __$$TvShowItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double? score, ShowModel? show});

  @override
  $ShowModelCopyWith<$Res>? get show;
}

/// @nodoc
class __$$TvShowItemImplCopyWithImpl<$Res>
    extends _$TvShowItemCopyWithImpl<$Res, _$TvShowItemImpl>
    implements _$$TvShowItemImplCopyWith<$Res> {
  __$$TvShowItemImplCopyWithImpl(
      _$TvShowItemImpl _value, $Res Function(_$TvShowItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? score = freezed,
    Object? show = freezed,
  }) {
    return _then(_$TvShowItemImpl(
      freezed == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as double?,
      freezed == show
          ? _value.show
          : show // ignore: cast_nullable_to_non_nullable
              as ShowModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TvShowItemImpl implements _TvShowItem {
  _$TvShowItemImpl(this.score, this.show);

  factory _$TvShowItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$TvShowItemImplFromJson(json);

  @override
  final double? score;
  @override
  final ShowModel? show;

  @override
  String toString() {
    return 'TvShowItem(score: $score, show: $show)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TvShowItemImpl &&
            (identical(other.score, score) || other.score == score) &&
            (identical(other.show, show) || other.show == show));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, score, show);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TvShowItemImplCopyWith<_$TvShowItemImpl> get copyWith =>
      __$$TvShowItemImplCopyWithImpl<_$TvShowItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TvShowItemImplToJson(
      this,
    );
  }
}

abstract class _TvShowItem implements TvShowItem {
  factory _TvShowItem(final double? score, final ShowModel? show) =
      _$TvShowItemImpl;

  factory _TvShowItem.fromJson(Map<String, dynamic> json) =
      _$TvShowItemImpl.fromJson;

  @override
  double? get score;
  @override
  ShowModel? get show;
  @override
  @JsonKey(ignore: true)
  _$$TvShowItemImplCopyWith<_$TvShowItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
