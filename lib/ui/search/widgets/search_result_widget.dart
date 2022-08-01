import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/blocs/search/search_bloc.dart';
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

ScrollController _scrollController=ScrollController();



  @override
  Widget build(BuildContext context) {

    return Container(
      color: Colors.red,
      child: Column(children: [

        Container(margin: EdgeInsets.symmetric(vertical: 10),child: SearchBar()),


        Expanded(
         // height: MediaQuery.of(context).size.height-100,
          child: BlocBuilder<SearchBloc, SearchState>(
              builder: (context, state) {
                if (state is SearchLoaded) {
                  return Column(
                    children: [
                      Expanded(
                        child: GridView.builder(
                            shrinkWrap: true,
                            controller: _scrollController..addListener(() {
                              if(_scrollController.position.pixels ==_scrollController.position.maxScrollExtent ){

                                _getMoreInfo();
                              }

                            }),
                            itemCount:state.videos.length,
                            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                        ), itemBuilder: (BuildContext context, int index) {
                          return VideoItemSearchResult(index: index, videoList: state.videos,);


                        }),
                      ),
                      CircularProgressIndicator(),
                    ],
                  );

                }


                  return Container();
              }),


        ),

      ],),
    );
  }
  void _getMoreInfo() async{


    //show progressbar
    BlocProvider.of<SearchBloc>(context)
      ..isfetch = true
      ..add(SearchingVideo());



  }



}
