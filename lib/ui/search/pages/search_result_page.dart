import 'package:aparat/data/repositories/video_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/data provider/Video_data_provider_by_search.dart';
import '../../../domain/blocs/search/search_bloc.dart';
import '../widgets/search_result_widget.dart';

VideoDataProvider videoDataProvider=new VideoDataProvider();
VideoRepository videoRepository=new VideoRepository(videoDataProvider);
class SearchResultPage extends StatelessWidget {
  const SearchResultPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(body: BlocProvider(
      create: (context) => SearchBloc(videoRepository),
      child: SearchResultWidget(),
    ),));
  }
}
