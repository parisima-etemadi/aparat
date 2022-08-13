import 'dart:async';
import 'dart:developer' as developer;
import 'dart:io';
import 'package:aparat/ui/search/widgets/video_item_search_result.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:aparat/injection_container.dart';
import '../../../domain/blocs/pagination/cubit/aparat_pagination_cubit.dart';
import '../../../domain/blocs/search/search_bloc.dart';
import '../../../domain/models/search/video_model.dart';
import 'package:aparat/ui/search/pages/play_page.dart';

class AparatPaginationWidget extends StatefulWidget {
  const AparatPaginationWidget({Key? key, required this.videoLists})
      : super(key: key);
  final List<VideoModel> videoLists;
  @override
  State<AparatPaginationWidget> createState() => _AparatPaginationWidgetState();
}

class _AparatPaginationWidgetState extends State<AparatPaginationWidget> {
  late ScrollController _scrollController;
  @override
  void initState() {
    // TODO: implement initState
    _scrollController = ScrollController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    String searchKey = BlocProvider.of<SearchBloc>(context).search;
    return BlocBuilder<AparatPaginationCubit, AparatPaginationState>(
      builder: (context, state) {
        // developer.log(state.toString(), name: 'state Aparat');

        if (state is AparatPaginationInitial) return Center(child: Text(""));

        if (state is AparatPaginationLoaded)
          return Expanded(
            child: Container(
              child: SingleChildScrollView(
                controller: _scrollController
                  ..addListener(() {
                    if (_scrollController.position.atEdge) {
                      if (_scrollController.position.pixels != 0) {
                        context
                            .read<AparatPaginationCubit>()
                            .loadMoreVideos(state.videos, searchKey);
                      }
                      // Future.delayed(
                      //    const Duration(seconds: 4),
                      //() =>

                      //   );
                      print("addListener _scrollController");
                    }
                  }),
                child: Column(
                  children: [
                    GridView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: state.videos.length,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                        ),
                        itemBuilder: (BuildContext context, int index) {
                          return VideoItemSearchResult(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => PlayScreenPage(
                                        uid: state.videos[index].uid),
                                  ));
                            },
                            index: index,
                            videoList: state.videos,
                          );
                        }),
                    if (state.fetch == true) CircularProgressIndicator()
                  ],
                ),
              ),
            ),
          );

        return Center(
            child: Text("state chenged in aparat pagination + $state"));
      },
    );
  }
}
