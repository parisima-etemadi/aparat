import 'package:aparat/ui/search/pages/search_result_page.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import 'data/data provider/Video_data_provider_by_search.dart';
import 'data/repositories/video_repository.dart';
import 'domain/blocs/play_video/details_of_video_bloc.dart';

final dI = GetIt.instance;

void init() {
  _injectDio();
  _inJectVideoRepository();
}

void _inJectVideoRepository() {
  dI.registerLazySingleton(() => VideoDataProvider());
  dI.registerLazySingleton(() => VideoRepository(dI()));
  dI.registerFactory(() => DetailsOfVideoBloc(videoRepository: dI()));
}

void _injectDio() {
  dI.registerLazySingleton(() => Dio());
}
