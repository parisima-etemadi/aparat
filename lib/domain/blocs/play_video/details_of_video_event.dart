part of 'details_of_video_bloc.dart';

@immutable
abstract class DetailsOfVideoEvent {}

class GetVideoDetails extends DetailsOfVideoEvent {
  String uid;

  GetVideoDetails(this.uid);
}