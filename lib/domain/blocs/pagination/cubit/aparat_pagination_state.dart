part of 'aparat_pagination_cubit.dart';

@immutable
abstract class AparatPaginationState {}

class AparatPaginationInitial extends AparatPaginationState {}

class AparatPaginationLoading extends AparatPaginationState {}

class AparatPaginationLoaded extends AparatPaginationState {
  final List<VideoModel> videos;
  final bool fetch;
  AparatPaginationLoaded(this.videos, this.fetch);
}

class AparatPaginationMoreDataLoaded extends AparatPaginationState {
  final List<VideoModel> videos;

  AparatPaginationMoreDataLoaded(
    this.videos,
  );
}

class AparatPaginationFailed extends AparatPaginationState {}

class AparatPaginationNotFound extends AparatPaginationState{}