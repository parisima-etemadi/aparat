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
  int number = 0;
  late AparatPaginationCubit aparatPaginationCubit;


  @override
  void initState() {
    // TODO: implement initState
    aparatPaginationCubit=dI<AparatPaginationCubit>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AparatPaginationCubit, AparatPaginationState>(
      builder: (context, state) =>state.when(initial:()=>
        const CircularProgressIndicator()
       , loading: () {
            return const CircularProgressIndicator();
          }, notFound: ()=> Center(child: Text("ویدیویی برای نمایش وجود ندارد"),), failed: ()=>Center(child: Text("failure "),), loaded: (videos,fetch)=>


           Container(
             child: Column(
               children: [
                 Expanded(
                   child: SmartRefresher(
                     controller: aparatPaginationCubit.refreshController,

                     enablePullDown: true,
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
                                     builder: (context) =>
                                         PlayScreenPage(
                                             uid: videos[index].uid),
                                   ));
                             },
                             index: index,
                             videoList: videos,
                           );
                         }),
                   ),
                 ),
                 // if (state.fetch == true) CircularProgressIndicator()
               ],
             ),
           )),




    );
  }

  void _loadMore() {
    context
        .read<AparatPaginationCubit>()
        .loadMoreVideos();
  }

  void _refresh() {
    context
        .read<AparatPaginationCubit>()
        .refreshLoading();
  }
}
