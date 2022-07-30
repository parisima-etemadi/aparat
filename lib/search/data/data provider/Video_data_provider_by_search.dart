

import 'package:dio/dio.dart';

class VideoDataProvider{

  Future<Response> getVideosBySearch(String search) async {
    var rawVideoResponce=await Dio().get('https://www.aparat.com/etc/api/videoBySearch/text/$search/perpage/10',
   );

    return rawVideoResponce;


  }


}