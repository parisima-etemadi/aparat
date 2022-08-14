part of 'details_of_video_bloc.dart';



@freezed

class DetailsOfVideoState with _$DetailsOfVideoState{

    const factory DetailsOfVideoState.initial() =_DetailsOfVideoInitial;
    const factory DetailsOfVideoState.Loaded({required VideoDetailModel videoDetailModel}) =_DetailsOfVideoLoaded;


}