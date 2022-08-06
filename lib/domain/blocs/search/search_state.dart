part of 'search_bloc.dart';

@immutable
abstract class SearchState {}

class SearchInitial extends SearchState {}

class SearchNotFound extends SearchState {}

class SearchError extends SearchState {}

class SearchLoaded extends SearchState {
  final List<VideoModel> videos;

  SearchLoaded(this.videos);
}

class SearchLoading extends SearchState {}

class GetDetailsSucceed extends SearchState {
  VideoDetailModel videoDetailModel;

  GetDetailsSucceed(this.videoDetailModel);

}
