import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../../data/repositories/video_repository.dart';
import '../../models/play_video/video_detail_model.dart';

part 'details_of_video_event.dart';
part 'details_of_video_state.dart';

class DetailsOfVideoBloc
    extends Bloc<DetailsOfVideoEvent, DetailsOfVideoState> {
  final VideoRepository videoRepository;

  DetailsOfVideoBloc({required this.videoRepository})
      : super(DetailsOfVideoInitial()) {
    on<DetailsOfVideoEvent>((event, emit) async {
      print("state in vide bloc" + state.toString());
      if (event is GetVideoDetails) {
        final videoDetails =
            await videoRepository.getVideoDetailsBySearch(event.uid);

        emit(DetailsOfVideoLoadedsuccessfully(videoDetails));
      }
    });
  }
}
