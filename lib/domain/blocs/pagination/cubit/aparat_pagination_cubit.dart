import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'dart:developer' as developer;
import '../../../../data/repositories/video_repository.dart';
import '../../../models/search/video_model.dart';
part 'aparat_pagination_state.dart';

class AparatPaginationCubit extends Cubit<AparatPaginationState> {
  AparatPaginationCubit({required this.videoRepository})
      : super(AparatPaginationInitial());
  final VideoRepository videoRepository;
  List<VideoModel> oldListVideos = [];
  bool fetch = true;
  int perpage = 1;
  int number = 2;
  void loadVideos(List<VideoModel> listVideo) async {
    emit(AparatPaginationLoading());
    oldListVideos = listVideo;

    emit(AparatPaginationLoaded(listVideo, true));
  }

  void loadMoreVideos(List<VideoModel> listVideo, String searchKey) async {
    print("loadMoreVideos cubit called");
    perpage = perpage + 1;
    developer.log(perpage.toString(), name: 'perPage');
    fetch = true;

    //if (perpage <= number) {
    final listVideo = await videoRepository
        .getVideoBySearch(searchKey, perpage);
        oldListVideos.addAll(listVideo);
    developer.log(oldListVideos.length.toString(), name: 'lisvideo 32');
    emit(AparatPaginationLoaded(oldListVideos, true));
   // }

    fetch = false;
     number++;
  }
}
