
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../data/repositories/video_repository.dart';
import '../../../models/search/video_model.dart';

part 'aparat_pagination_state.dart';
part 'aparat_pagination_cubit.freezed.dart';
class AparatPaginationCubit extends Cubit<AparatPaginationState> {
  AparatPaginationCubit({required this.videoRepository})
      : super(const AparatPaginationState.initial());
  final VideoRepository videoRepository;
  List<VideoModel> oldListVideos = [];

  bool fetch = true;
  int perPage = 1;

  String searchKey = "";

  void loadMoreVideos() async {
    final listVideo =
        await videoRepository.getVideoBySearch(searchKey, perPage);
    perPage++;
    if (listVideo.isEmpty) {
      emit(const AparatPaginationState.notFound());
    } else {
      emit(AparatPaginationState.loading());
      oldListVideos.addAll(listVideo);
      emit(AparatPaginationState.loaded(videos:oldListVideos, fetch:true));
    }
  }
  void refreshVideos() async {
    emit(AparatPaginationState.loading());
    oldListVideos = [];
    final listVideo =
    await videoRepository.getVideoBySearch(searchKey, 1);

    oldListVideos=listVideo;
      emit(AparatPaginationState.loaded(videos:listVideo, fetch:true));

  }

}
