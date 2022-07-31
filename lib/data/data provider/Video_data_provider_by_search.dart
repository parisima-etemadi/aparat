

import 'dart:convert';

import 'package:dio/dio.dart';

import '../entities/video_entity.dart';

class VideoDataProvider{

  Future<List<VideoEntity>> getVideosBySearch(String search,int videosperpage) async {
    var rawVideoResponce=await Dio().get('https://www.aparat.com/etc/api/videoBySearch/text/$search/perpage/10/curoffset/$videosperpage',
   );
    List<dynamic> list=json.decode(rawVideoResponce.data)['videobysearch'];
    final responsevideo=list.map<VideoEntity>((JsonMapObject)=>VideoEntity.fromJson(JsonMapObject)).toList();


    return responsevideo;


  }


}