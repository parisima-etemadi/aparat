import 'package:aparat/domain/models/play_video/video_detail_model.dart';
import 'package:aparat/domain/models/search/video_model.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../../data/repositories/video_repository.dart';

part 'search_event.dart';
part 'search_state.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final VideoRepository videoRepository;
  List<VideoModel> listVideos = [];
  String search = "";
  int videoPerPage = 1;
  String uid = "";
  bool isfetch = false;

  // @override
  // Stream<SearchState> mapEventToState(SearchEvent event) async* {
  //   if (event is SearchingVideoEvent) {
  //     try {
  //       List<VideoModel> listGetData =
  //           await videoRepository.getVideoBySearch(search, videoPerPage);
  //       listVideos.addAll(listGetData);
  //       yield SearchLoaded(listVideos);
  //       videoPerPage += 1;
  //     } on Exception {}
  //   }
  //   if (event is GetVideoDetails) {
  //     final videoDetails = await videoRepository.getVideoDetailsBySearch(uid);
  //     print("event is" + event.toString());
  //     yield GetDetailsSucceed();
  //   }
  SearchBloc(this.videoRepository) : super(SearchInitial()) {
    on<SearchEvent>((event, emit) async {
      if (event is SearchingVideoEvent) {
        isfetch = true;
        // if (search?.length <= 1) {
        //   emit(SearchError());
        // }

        // emit(SearchLoading());
        List<VideoModel> listVideo =
            await videoRepository.getVideoBySearch(search, videoPerPage);
        listVideos.addAll(listVideo);
        emit(SearchLoaded(listVideos));

        videoPerPage += 1;
        isfetch = false;

//  }

      }
      if (event is GetVideoDetails) {

        final videoDetails = await videoRepository.getVideoDetailsBySearch(event.uid);

        emit(GetDetailsSucceed(videoDetails));
      }

      if (event is GetSimilarVideos) {

     //   final videoDetails = await videoRepository.getSimilarVideos(event.uid);

      //  emit(GetDetailsSucceed(videoDetails));
      }
      // key=> searchbloc
      // set keyborad
    });

    // two function for searching delete list
  }
}
