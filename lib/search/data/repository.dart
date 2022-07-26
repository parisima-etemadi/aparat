import 'dart:convert';

import 'package:dio/dio.dart';

class AparatApi{

  void getData() async {
    var response=await Dio().get('https://www.aparat.com/etc/api/videoBySearch/text/parisima/perpage/10',);
    print(json.decode(response.data)['videobysearch']);
  }


}