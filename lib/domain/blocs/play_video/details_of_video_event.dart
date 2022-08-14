
part of 'details_of_video_bloc.dart';


@freezed
class DetailsOfVideoEvent with _$DetailsOfVideoEvent{

  const factory DetailsOfVideoEvent.GetVideoDetails({required String uId})=GetVideoDetails;
}