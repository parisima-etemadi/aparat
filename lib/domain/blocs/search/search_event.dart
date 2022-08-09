part of 'search_bloc.dart';

@immutable
abstract class SearchEvent {}

class SearchingVideoEvent extends SearchEvent {}

class GetVideoDetails extends SearchEvent {
  String uid;

  GetVideoDetails(this.uid);
}

class GetSimilarVideos extends SearchEvent {
  int catergoryId;

  GetSimilarVideos(this.catergoryId);
}
