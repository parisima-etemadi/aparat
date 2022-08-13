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

class AparatPaginationWidget extends StatefulWidget {
  const AparatPaginationWidget({Key? key, required this.videoLists})
      : super(key: key);
  final List<VideoModel> videoLists;
  @override
  State<AparatPaginationWidget> createState() => _AparatPaginationWidgetState();
}

class _AparatPaginationWidgetState extends State<AparatPaginationWidget> {
  ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    String searchKey = BlocProvider.of<SearchBloc>(context).search;
    return BlocBuilder<AparatPaginationCubit, AparatPaginationState>(
      builder: (context, state) {
        developer.log(state.toString(), name: 'state Aparat');

        if (state is AparatPaginationInitial) return Center(child: Text(""));

        if (state is AparatPaginationLoaded)
          return Expanded(
            child: Container(
              child: SingleChildScrollView(
                controller: _scrollController
                  ..addListener(() {
                    if (_scrollController.position.pixels ==
                        _scrollController.position.maxScrollExtent) {
                      context
                          .read<AparatPaginationCubit>()
                          .loadMoreVideos(state.videos, searchKey);
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
                              // Navigator.push(
                              //     context,
                              //     MaterialPageRoute(
                              //         builder: (context) => BlocProvider(
                              //               create: (context) =>
                              //                   dI<DetailsOfVideoBloc>(),
                              //               child: PlayScreenPage(
                              //                   uid: state.videos[index].uid),
                              //             )));
                            },
                            index: index,
                            videoList: state.videos,
                          );
                        }),

                    if (context.read<AparatPaginationCubit>().fetch == true)
                      CircularProgressIndicator()
                    // if (_showCircularProgressIndicator)
                    //   Center(
                    //     child: CircularProgressIndicator(),
                    //   ),
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
