import 'package:freezed_annotation/freezed_annotation.dart';
part 'video_entity.g.dart';
part 'video_entity.freezed.dart';
@freezed
class VideoEntity with _$VideoEntity{


 const factory VideoEntity({
      required String small_poster})=_VideoEntity;

 factory VideoEntity.fromJson(Map<String,dynamic> json)=>_$VideoEntityFromJson(json);



}
