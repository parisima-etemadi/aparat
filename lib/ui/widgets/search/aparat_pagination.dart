import 'dart:developer' as developer;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';


import '../../../../domain/blocs/pagination/cubit/aparat_pagination_cubit.dart';
import '../../pages/play_page.dart';
import '../details_video/video_item_search_result.dart';
import 'package:aparat/injection_container.dart';
class AparatPaginationWidget extends StatefulWidget {
  const AparatPaginationWidget({Key? key})
      : super(key: key);

  //final List<VideoModel> videoLists;
  @override
  State<AparatPaginationWidget> createState() => _AparatPaginationWidgetState();
}

class _AparatPaginationWidgetState extends State<AparatPaginationWidget> {
  late ScrollController _scrollController;
  int number = 0;
  late AparatPaginationCubit aparatPaginationCubit;
  scrollListener() {
    _scrollController.addListener(() {
      if (_scrollController.offset ==
          _scrollController.position.maxScrollExtent) {
        number++;
        print('//////////////// $number');
        context
            .read<AparatPaginationCubit>()
            .loadMoreVideos();
      }
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    _scrollController = ScrollController();
    aparatPaginationCubit=dI<AparatPaginationCubit>();
    scrollListener();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AparatPaginationCubit, AparatPaginationState>(
      builder: (context, state) {
        print("state in aparat pagination" + state.toString());
        if (State is AparatPaginationLoading)
          return CircularProgressIndicator();
        if (state is AparatPaginationNotFound)
          return Center(child: Text("ویدیویی برای نمایش وجود ندارد"),);
        if (state is AparatPaginationLoaded)
          return Expanded(
            child: Container(
              child: Column(
                children: [
                  Expanded(
                    child: SmartRefresher(
                      controller: aparatPaginationCubit.refreshController,
                      enablePullUp: true,
                      onLoading: _loadMore,
                      child: GridView.builder(
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
                                      builder: (context) =>
                                          PlayScreenPage(
                                              uid: state.videos[index].uid),
                                    ));
                              },
                              index: index,
                              videoList: state.videos,
                            );
                          }),
                    ),
                  ),
                  // if (state.fetch == true) CircularProgressIndicator()
                ],
              ),
            ),
          );
        if (State is AparatPaginationFailed)
          return Center(child: Text("failure "),);
        return Center(
            child: Text("state chenged in aparat pagination + $state"));
      },
    );
  }

  void _loadMore() {
    number++;
    print('//////////////// $number');
    context
        .read<AparatPaginationCubit>()
        .loadMoreVideos();
  }
}
