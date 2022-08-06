// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'video_detail_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_VideoDetailEntity _$$_VideoDetailEntityFromJson(Map<String, dynamic> json) =>
    _$_VideoDetailEntity(
      title: json['title'] as String,
      username: json['username'] as String,
      visit_cnt: json['visit_cnt'] as int,
      description: json['description'] as String?,
      cat_id: json['cat_id'] as int,
    );

Map<String, dynamic> _$$_VideoDetailEntityToJson(
        _$_VideoDetailEntity instance) =>
    <String, dynamic>{
      'title': instance.title,
      'username': instance.username,
      'visit_cnt': instance.visit_cnt,
      'description': instance.description,
      'cat_id': instance.cat_id,
    };
