import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../../models/search/video_model.dart';

part 'aparat_pagination_state.dart';

class AparatPaginationCubit extends Cubit<AparatPaginationState> {
  AparatPaginationCubit() : super(AparatPaginationInitial());

  void loadMoreVideos() {}
}
