part of 'aparat_pagination_cubit.dart';

@immutable
abstract class AparatPaginationState {}

class AparatPaginationInitial extends AparatPaginationState {}

class AparatPaginationLoading extends AparatPaginationState {}

class AparatPaginationLoaded extends AparatPaginationState {
  final List<VideoModel> videos;
  AparatPaginationLoaded(this.videos);
}

class AparatPaginationMoreDataLoaded extends AparatPaginationState {
  final List<VideoModel> videos;
  AparatPaginationMoreDataLoaded(this.videos);
}

class AparatPaginationFailed extends AparatPaginationState {}
