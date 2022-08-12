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
    BlocProvider.of<SearchBloc>(context).add(SearchingVideoEvent());
  }

  ScrollController _scrollController = ScrollController();
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
          if (state is SearchLoading) {}
          if (state is SearchLoaded) {
            // loadMoreVideos();
            // _showCircularProgressIndicator = false;
            return AparatPaginationWidget(videoLists: state.videos);
            //  Expanded(
            //   child: SingleChildScrollView(
            //     controller: _scrollController
            //       ..addListener(() {
            //         if (_scrollController.position.pixels ==
            //             _scrollController.position.maxScrollExtent) {
            //           _showCircularProgressIndicator = true;
            //           //  Timer(Duration(seconds: 3), () {
            //           _getMoreInfo();
            //           //  });
            //         }
            //       }),
            //     child: Column(
            //       children: [
            //         GridView.builder(
            //             physics: NeverScrollableScrollPhysics(),
            //             shrinkWrap: true,
            //             itemCount: state.videos.length,
            //             gridDelegate:
            //                 const SliverGridDelegateWithFixedCrossAxisCount(
            //               crossAxisCount: 2,
            //             ),
            //             itemBuilder: (BuildContext context, int index) {
            //               return VideoItemSearchResult(
            //                 onTap: () {
            //                   Navigator.push(
            //                       context,
            //                       MaterialPageRoute(
            //                           builder: (context) => BlocProvider(
            //                                 create: (context) =>
            //                                     dI<DetailsOfVideoBloc>(),
            //                                 child: PlayScreenPage(
            //                                     uid: state.videos[index].uid),
            //                               )));
            //                 },
            //                 index: index,
            //               videoList: state.videos,
            //             );
            //           }),
            //       if (_showCircularProgressIndicator)
            //         Center(
            //           child: CircularProgressIndicator(),
            //         ),
            //     ],
            //   ),
            // ),
            //   );
          }
          // if (state is SearchLoading) {
          //   return CircularProgressIndicator();
          // }

          return Container();
        }),
      ],
    );
  }

  void _getMoreInfo() async {
    //show progressbar

    // setState(() {

    // });
    // print('_showCircularProgressIndicator = ' +
    //    _showCircularProgressIndicator.toString());
    Timer(Duration(seconds: 3), () {
      BlocProvider.of<SearchBloc>(context).add(SearchingVideoEvent());
    });

    // if (BlocProvider.of<SearchBloc>(context).isfetch) {
    //  setState(() {
    //   _showCircularProgressIndicator = false;
    //  });
    //  }
  }
}
