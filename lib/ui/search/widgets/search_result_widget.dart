import 'dart:async';

import 'package:aparat/data/data%20provider/Video_data_provider.dart';
import 'package:aparat/data/repositories/video_repository.dart';
import 'package:aparat/ui/search/widgets/aparat_pagination.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/blocs/pagination/cubit/aparat_pagination_cubit.dart';
import '../../../domain/blocs/play_video/details_of_video_bloc.dart';
import '../../../domain/blocs/search/search_bloc.dart';
import '../pages/play_page.dart';
import 'search_bar.dart';
import 'video_item_search_result.dart';
import 'package:aparat/injection_container.dart';

class SearchResultWidget extends StatefulWidget {
  const SearchResultWidget({Key? key}) : super(key: key);

  @override
  State<SearchResultWidget> createState() => _SearchResultWidgetState();
}

class _SearchResultWidgetState extends State<SearchResultWidget> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // BlocProvider.of<SearchBloc>(context).add(SearchingVideoEvent());
  }

  bool _showCircularProgressIndicator = true;

  @override
  Widget build(BuildContext context) {
//nestedscrolview
    return
        // color: Colors.red,
        Column(
      children: [
        SearchBar(),
        BlocBuilder<SearchBloc, SearchState>(builder: (context, state) {
          if (state is SearchLoaded) {
            context.read<AparatPaginationCubit>().loadVideos(state.videos);

            return AparatPaginationWidget(videoLists: state.videos);
          }
          // if (state is SearchLoading) {
          //   return Center(child: CircularProgressIndicator());
          // }

          return Text("search state changeged+ $state");
        }),
      ],
    );
  }
}
