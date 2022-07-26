import 'dart:convert';

import 'package:aparat/search/data/models/video_model.dart';
import 'package:dio/dio.dart';

class AparatApi{

  void getData() async {
    var response=await Dio().get('https://www.aparat.com/etc/api/videoBySearch/text/parisima/perpage/10',);
    var responsevideo=json.decode(response.data)['videobysearch'].map((JsonMapObject)=>VideoModel.fromJson(JsonMapObject)).toList().cast<VideoModel>();
    List<VideoModel> videos=responsevideo;
    print(videos);

  }


}