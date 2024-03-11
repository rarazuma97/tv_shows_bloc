// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tv_show_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TvShowRequest _$TvShowRequestFromJson(Map<String, dynamic> json) {
  return _TvShowRequest.fromJson(json);
}

/// @nodoc
mixin _$TvShowRequest {
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TvShowRequestCopyWith<$Res> {
  factory $TvShowRequestCopyWith(
          TvShowRequest value, $Res Function(TvShowRequest) then) =
      _$TvShowRequestCopyWithImpl<$Res, TvShowRequest>;
}

/// @nodoc
class _$TvShowRequestCopyWithImpl<$Res, $Val extends TvShowRequest>
    implements $TvShowRequestCopyWith<$Res> {
  _$TvShowRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$TvShowRequestImplCopyWith<$Res> {
  factory _$$TvShowRequestImplCopyWith(
          _$TvShowRequestImpl value, $Res Function(_$TvShowRequestImpl) then) =
      __$$TvShowRequestImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TvShowRequestImplCopyWithImpl<$Res>
    extends _$TvShowRequestCopyWithImpl<$Res, _$TvShowRequestImpl>
    implements _$$TvShowRequestImplCopyWith<$Res> {
  __$$TvShowRequestImplCopyWithImpl(
      _$TvShowRequestImpl _value, $Res Function(_$TvShowRequestImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$TvShowRequestImpl extends _TvShowRequest {
  _$TvShowRequestImpl() : super._();

  factory _$TvShowRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$TvShowRequestImplFromJson(json);

  @override
  String toString() {
    return 'TvShowRequest()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TvShowRequestImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$$TvShowRequestImplToJson(
      this,
    );
  }
}

abstract class _TvShowRequest extends TvShowRequest {
  factory _TvShowRequest() = _$TvShowRequestImpl;
  _TvShowRequest._() : super._();

  factory _TvShowRequest.fromJson(Map<String, dynamic> json) =
      _$TvShowRequestImpl.fromJson;
}
