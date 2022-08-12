import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

import '../../../../data/repositories/video_repository.dart';
import '../../../models/search/video_model.dart';

part 'aparat_pagination_state.dart';

class AparatPaginationCubit extends Cubit<AparatPaginationState> {
  AparatPaginationCubit() : super(AparatPaginationInitial());

  void loadMoreVideos(List<VideoModel> listVideo) async {
    emit(AparatPaginationLoading());
    emit(AparatPaginationLoaded(listVideo));
  }
}
