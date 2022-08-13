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
  //bool isfetch = false;

  SearchBloc(this.videoRepository) : super(SearchInitial()) {
    on<SearchEvent>((event, emit) async {
      if (event is SearchingVideoEvent) {
        emit(SearchLoading());
        print("SearchingVideoEvent called");
        // isfetch = true;
        List<VideoModel> listVideo =
            await videoRepository.getVideoBySearch(search, videoPerPage);
       // listVideos.addAll(listVideo);
        emit(SearchLoaded(listVideo));

        // videoPerPage += 1;
        // isfetch = false;
      }
    });
  }
}
