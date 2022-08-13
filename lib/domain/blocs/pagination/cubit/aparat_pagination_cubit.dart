import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'dart:developer' as developer;
import '../../../../data/repositories/video_repository.dart';
import '../../../models/search/video_model.dart';

part 'aparat_pagination_state.dart';

class AparatPaginationCubit extends Cubit<AparatPaginationState> {
  AparatPaginationCubit({required this.videoRepository})
      : super(AparatPaginationInitial());
  final VideoRepository videoRepository;
  List<VideoModel> oldListVideos = [];
  RefreshController refreshController = RefreshController();

  bool fetch = true;
  int perpage = 1;
  int number = 2;
  String searchKey = "";

  void loadVideos(List<VideoModel> listVideo) async {
    emit(AparatPaginationLoading());
    oldListVideos = listVideo;

    emit(AparatPaginationLoaded(listVideo, true));
  }

  void loadMoreVideos() async {
    print("loadMoreVideos cubit called");

    developer.log(perpage.toString(), name: 'perPage');
    fetch = true;

    //if (perpage <= number) {
    final listVideo =
        await videoRepository.getVideoBySearch(searchKey, perpage);

    if (listVideo.isEmpty) {
      emit(AparatPaginationNotFound());
      refreshController.loadNoData();
    } else {
      oldListVideos.addAll(listVideo);
      developer.log(oldListVideos.length.toString(), name: 'lisvideo 32');
      emit(AparatPaginationLoaded(oldListVideos, fetch));
      refreshController.loadComplete();

      perpage++;
    }
    fetch = false;
    number++;
  }
}
