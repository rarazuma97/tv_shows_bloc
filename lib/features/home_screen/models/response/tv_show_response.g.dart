// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tv_show_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TvShowResponseImpl _$$TvShowResponseImplFromJson(Map<String, dynamic> json) =>
    _$TvShowResponseImpl(
      showList: (json['showList'] as List<dynamic>?)
              ?.map((e) => TvShowItem.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <TvShowItem>[],
    );

Map<String, dynamic> _$$TvShowResponseImplToJson(
        _$TvShowResponseImpl instance) =>
    <String, dynamic>{
      'showList': instance.showList,
    };

_$TvShowItemImpl _$$TvShowItemImplFromJson(Map<String, dynamic> json) =>
    _$TvShowItemImpl(
      (json['score'] as num?)?.toDouble(),
      json['show'] == null
          ? null
          : ShowModel.fromJson(json['show'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TvShowItemImplToJson(_$TvShowItemImpl instance) =>
    <String, dynamic>{
      'score': instance.score,
      'show': instance.show,
    };
