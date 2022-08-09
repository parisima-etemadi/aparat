part of 'details_of_video_bloc.dart';

@immutable
abstract class DetailsOfVideoState {}

class DetailsOfVideoInitial extends DetailsOfVideoState {

}


class DetailsOfVideoLoadedsuccessfully extends DetailsOfVideoState {
  VideoDetailModel videoDetailModel;

  DetailsOfVideoLoadedsuccessfully(this.videoDetailModel);

}