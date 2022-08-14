import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../data/repositories/video_repository.dart';
import '../../models/play_video/video_detail_model.dart';

part 'details_of_video_event.dart';
part 'details_of_video_state.dart';
part 'details_of_video_bloc.freezed.dart';
class DetailsOfVideoBloc
    extends Bloc<DetailsOfVideoEvent, DetailsOfVideoState> {
  final VideoRepository videoRepository;

  DetailsOfVideoBloc({required this.videoRepository})
      : super( const  DetailsOfVideoState.initial()) {
    on<DetailsOfVideoEvent>((event, emit) async {
      if (event is GetVideoDetails) {
        final videoDetails =
            await videoRepository.getVideoDetailsBySearch(event.uId);

        emit( DetailsOfVideoState.Loaded(videoDetailModel: videoDetails));
      }
    });
  }
}
