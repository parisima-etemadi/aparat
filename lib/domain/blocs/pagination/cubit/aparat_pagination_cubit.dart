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
    emit(AparatPaginationLoading());
    listVideos = listVideo;

    emit(AparatPaginationLoaded(listVideo, true));
  }

  void loadMoreVideos(List<VideoModel> listVideo, String searchKey) async {
    perpage = perpage + 1;
    developer.log(perpage.toString(), name: 'perPage');
    fetch = true;

    List<VideoModel> listVideo =
        await videoRepository.getVideoBySearch(searchKey, perpage);

    listVideos.addAll(listVideo);
    print("listVideos" + listVideos.length.toString());
    emit(AparatPaginationLoaded(listVideos, true));
    fetch = false;
  }
}
