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
  List<VideoModel> listVideos = [];
  bool fetch = true;
  int perpage = 1;
  void loadVideos(List<VideoModel> listVideo) async {
    listVideos = listVideo;
    emit(AparatPaginationLoading());

    emit(AparatPaginationLoaded(listVideo, fetch));
  }

  void loadMoreVideos(List<VideoModel> listVideo, String searchKey) async {
    perpage = perpage + 1;
    developer.log(perpage.toString(), name: 'perPage');
    fetch = true;
    //emit(AparatPaginationLoaded(listVideos, fetch));

    developer.log(fetch.toString(), name: 'fetch 27');
    List<VideoModel> listVideo =
        await videoRepository.getVideoBySearch(searchKey, perpage);
    listVideos.addAll(listVideo);
    emit(AparatPaginationLoaded(listVideos, fetch));
    fetch = false;

    developer.log(fetch.toString(), name: 'fetch 33');
  }
}
