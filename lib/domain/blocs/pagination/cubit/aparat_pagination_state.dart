part of 'aparat_pagination_cubit.dart';


@freezed
class AparatPaginationState with _$AparatPaginationState{
  const factory AparatPaginationState.initial()=_AparatPaginationInitial;
  const factory AparatPaginationState.loading()=_AparatPaginationLoading;
  const factory AparatPaginationState.notFound()=_AparatPaginationNotFound;
  const factory AparatPaginationState.failed()=_AparatPaginationFailed;
  const factory AparatPaginationState.loaded({required List<VideoModel> videos,required bool fetch })=_AparatPaginationLoaded;

}