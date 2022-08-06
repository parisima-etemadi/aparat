import 'package:freezed_annotation/freezed_annotation.dart';
part 'video_detail_entity.g.dart';
part 'video_detail_entity.freezed.dart';

@freezed
 class VideoDetailEntity with _$VideoDetailEntity {
  const factory VideoDetailEntity(
      {
      required String title,
      required String username
      ,
        required int visit_cnt,
        required String? description,required int cat_id,
      }) = _VideoDetailEntity;

  factory VideoDetailEntity.fromJson(Map<String, dynamic> json) =>
      _$VideoDetailEntityFromJson(json);
}
