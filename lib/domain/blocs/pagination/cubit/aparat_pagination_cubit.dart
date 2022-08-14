import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'dart:developer' as developer;
import '../../../../data/repositories/video_repository.dart';
import '../../../models/search/video_model.dart';

part 'aparat_pagination_state.dart';
part 'aparat_pagination_cubit.freezed.dart';
class AparatPaginationCubit extends Cubit<AparatPaginationState> {
  AparatPaginationCubit({required this.videoRepository})
      : super(const AparatPaginationState.initial());
  final VideoRepository videoRepository;
  List<VideoModel> oldListVideos = [];
  RefreshController refreshController = RefreshController();

  bool fetch = true;
  int perpage = 1;

  String searchKey = "";

  void loadVideos(List<VideoModel> listVideo) async {
    emit(const AparatPaginationState.loading());
    oldListVideos = listVideo;

    emit(AparatPaginationState.loaded(videos:listVideo, fetch:true));
  }

  void loadMoreVideos() async {


    final listVideo =
        await videoRepository.getVideoBySearch(searchKey, perpage);

    if (listVideo.isEmpty) {
      emit(AparatPaginationState.notFound());
      refreshController.loadNoData();
    } else {
      oldListVideos.addAll(listVideo);
      developer.log(oldListVideos.length.toString(), name: 'lisvideo 32');
      emit(AparatPaginationState.loaded(videos:listVideo, fetch:true));
      refreshController.loadComplete();

      perpage++;
    }


  }
}
