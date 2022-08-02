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
  bool isfetch = false;

  // @override
  // Stream<SearchState> mapEventToState(SearchEvent event) async* {
  //   if (event is SearchingVideoEvent) {
  //     try {
  //       print("firs hi i'm here videoPerPage + ${videoPerPage}");

  //       List<VideoModel> listGetData =
  //           await videoRepository.getVideoBySearch(search, videoPerPage);
  //       listVideos.addAll(listGetData);
  //       yield SearchLoaded(listVideos);
  //       videoPerPage += 1;
  //       print("hi i'm here videoPerPage + ${videoPerPage}");
  //     } on Exception {
  //       print("hi i'm here Exception");
  //     }
  //   }
  // }

  SearchBloc(this.videoRepository) : super(SearchInitial()) {
    on<SearchEvent>((event, emit) async {
      if (event is SearchingVideoEvent) {
        isfetch = true;
        // if(search?.length <=1){
        //   emit(SearchError());
        // }
        // if(search?.isNotEmpty && search?.length >=2){
        // emit(SearchLoading());
        List<VideoModel> listVideo =
            await videoRepository.getVideoBySearch(search, videoPerPage);
        listVideos.addAll(listVideo);
        emit(SearchLoaded(listVideos));

        videoPerPage += 1;
        isfetch = false;
        print("videoPerPage" + videoPerPage.toString());
//  }

      }
      // key=> searchbloc
      // set keyborad
    });

    // two function for searching delete list
  }
}
