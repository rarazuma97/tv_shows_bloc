// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'show_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ShowModelImpl _$$ShowModelImplFromJson(Map<String, dynamic> json) =>
    _$ShowModelImpl(
      json['id'] as int?,
      json['url'] as String?,
      json['name'] as String?,
      json['type'] as String?,
      json['language'] as String?,
      json['status'] as String?,
      json['runtime'] as int?,
      json['averageRuntime'] as int?,
      json['premiered'] as String?,
      json['ended'] as String?,
      json['officialSite'] as String?,
      json['rating'] == null
          ? null
          : RatingModel.fromJson(json['rating'] as Map<String, dynamic>),
      json['weight'] as int?,
      json['image'] == null
          ? null
          : ImageModel.fromJson(json['image'] as Map<String, dynamic>),
      json['summary'] as String?,
      json['updated'] as int?,
    );

Map<String, dynamic> _$$ShowModelImplToJson(_$ShowModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'url': instance.url,
      'name': instance.name,
      'type': instance.type,
      'language': instance.language,
      'status': instance.status,
      'runtime': instance.runtime,
      'averageRuntime': instance.averageRuntime,
      'premiered': instance.premiered,
      'ended': instance.ended,
      'officialSite': instance.officialSite,
      'rating': instance.rating,
      'weight': instance.weight,
      'image': instance.image,
      'summary': instance.summary,
      'updated': instance.updated,
    };
