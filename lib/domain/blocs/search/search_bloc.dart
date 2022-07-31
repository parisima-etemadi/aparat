

import 'package:aparat/domain/models/search/video_model.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../../data/repositories/video_repository.dart';

part 'search_event.dart';
part 'search_state.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final VideoRepository videoRepository;
   List<VideoModel> listVideos=[];
   String search="";
   int videoPerPage=10;
   bool isfetch=false;


  SearchBloc(this.videoRepository) : super(SearchInitial()) {
    on<SearchEvent>((event, emit) async {
      if (event is SearchingVideo) {
        //   if(search?.length <=1){
        //     emit(SearchError());
        //   }
        //    if(search?.isNotEmpty && search?.length >=2){
      //  emit(SearchLoading());
        List<VideoModel> listVideo = await videoRepository.getVideoBySearch(search, videoPerPage);
        listVideos.addAll(listVideo);
        emit(SearchLoaded(listVideos));

          videoPerPage+=1;

    // }

      }





      // key=> searchbloc
      //set keyborad


    });
  }
}
