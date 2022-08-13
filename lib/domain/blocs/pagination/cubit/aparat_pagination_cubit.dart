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
  bool fetch = false;
  int perpage = 1;
  void loadVideos(List<VideoModel> listVideo) async {
    listVideos = listVideo;
    emit(AparatPaginationLoading());
    developer.log(state.toString(), name: 'state cubit');
    emit(AparatPaginationLoaded(listVideo));
  }

  void loadMoreVideos(List<VideoModel> listVideo, String searchKey) async {
    perpage++;
    fetch = true;
    List<VideoModel> listVideo =
        await videoRepository.getVideoBySearch(searchKey, perpage);
    listVideos.addAll(listVideo);
    emit(AparatPaginationLoaded(listVideos));
  }
}
