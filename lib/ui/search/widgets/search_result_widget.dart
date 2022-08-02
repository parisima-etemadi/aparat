import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/blocs/search/search_bloc.dart';
import '../pages/play_screen.dart';
import 'search_bar.dart';
import 'video_item_search_result.dart';

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
  }

  ScrollController _scrollController = ScrollController();
  bool _showCircularProgressIndicator = false;

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
            // _showCircularProgressIndicator = false;
            return Expanded(
              child: SingleChildScrollView(
                controller: _scrollController
                  ..addListener(() {
                    if (_scrollController.position.pixels >=
                        _scrollController.position.maxScrollExtent) {
                      Timer(Duration(seconds: 3), () {
                        _getMoreInfo();
                      });

                      print("reach the end of the page");
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

                                      )));
                            },
                            index: index,
                            videoList: state.videos,
                          );
                        }),
                    if (_showCircularProgressIndicator)
                      Center(
                        child: CircularProgressIndicator(),
                      ),
                  ],
                ),
              ),
            );
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

    setState(() {
      _showCircularProgressIndicator = true;
    });
    print("_getMoreInfo called");
    BlocProvider.of<SearchBloc>(context)..add(SearchingVideoEvent());
    if (BlocProvider.of<SearchBloc>(context).isfetch) {
      setState(() {
        _showCircularProgressIndicator = false;
      });
    }
  }
}
