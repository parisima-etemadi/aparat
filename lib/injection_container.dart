import 'package:aparat/domain/blocs/search/search_bloc.dart';
import 'package:aparat/ui/search/pages/search_result_page.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import 'data/data provider/Video_data_provider.dart';
import 'data/data provider/video_data_provider_Imp.dart';
import 'data/repositories/video_repository.dart';
import 'data/repositories/video_repository_imp.dart';
import 'domain/blocs/pagination/cubit/aparat_pagination_cubit.dart';
import 'domain/blocs/play_video/details_of_video_bloc.dart';

final dI = GetIt.instance;

void init() {
  _inJectVideoRepository();
}

void _inJectVideoRepository() {
  dI.registerLazySingleton<VideoDataProvider>(
      () => VideoDataProviderImp(dio: dI()));
  dI.registerLazySingleton<VideoRepository>(() => VideoRepositoryImp(dI()));
  dI.registerLazySingleton(() => SearchBloc(dI()));
  //dI.registerLazySingleton(() => AparatPaginationCubit());
  dI.registerFactory(() => DetailsOfVideoBloc(videoRepository: dI()));
  dI.registerLazySingleton<Dio>(() => Dio());
}
