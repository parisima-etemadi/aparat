import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import '../../../../domain/blocs/pagination/cubit/aparat_pagination_cubit.dart';
import '../../pages/play_page.dart';
import '../details_video/video_item_search_result.dart';

class AparatPaginationWidget extends StatefulWidget {
  const AparatPaginationWidget({Key? key}) : super(key: key);

  //final List<VideoModel> videoLists;
  @override
  State<AparatPaginationWidget> createState() => _AparatPaginationWidgetState();
}

class _AparatPaginationWidgetState extends State<AparatPaginationWidget> {
  int number = 0;
  late AparatPaginationCubit aparatPaginationCubit;
  late RefreshController controller;

  @override
  void initState() {
    aparatPaginationCubit = context.read<AparatPaginationCubit>();
    controller = RefreshController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AparatPaginationCubit, AparatPaginationState>(
      builder: (context, state) {
        print("state aparat Pagination"+state.toString());
        return state.when(

            initial: () => Container(),
            loading: () {
              return const Center(child: CircularProgressIndicator());
            },
            notFound: () => const Center(
              child: Text("ویدیویی برای نمایش وجود ندارد"),
            ),
            failed: () => const Center(
              child: Text("موفقیت آمیز نبود "),
            ),
            loaded: (videos, fetch) {
            print("loaded aparat rebuild");
              return Container(
                height: MediaQuery.of(context).size.height,
                child: SmartRefresher(
                  controller: controller,
                  enablePullUp: true,
                  enablePullDown: true,
                  onRefresh: _RefreshList,
                  onLoading: _loadMore,
                  child: GridView.builder(
                      shrinkWrap: true,
                      itemCount: videos.length,
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
                                      uid: videos[index].uid),
                                ));
                          },
                          index: index,
                          videoList: videos,
                        );
                      }),
                ),
              );
            });
      }
    );
  }

  void _loadMore() {
    print('_loadMore()');
    context.read<AparatPaginationCubit>().loadMoreVideos();

    controller.loadComplete();
  }


  void _RefreshList() {
    context.read<AparatPaginationCubit>().refreshVideos();

    controller.refreshCompleted();
  }
}


