import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/blocs/search/search_bloc.dart';
import 'search_bar.dart';


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

    return Column(children: [
      SizedBox(height: 10,),
      SearchBar(),
      SizedBox(height: 10,),
      Expanded(
        //height: 200,
        child: BlocBuilder<SearchBloc, SearchState>(
            builder: (context, state) {
              if (state is SearchLoaded) {
                return GridView.builder(
                    controller: _scrollController..addListener(() {
                      if(_scrollController.position.pixels ==_scrollController.position.maxScrollExtent ){
                        _getMoreInfo();



                      }

                    }),
                    itemCount:state.videos.length,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ), itemBuilder: (BuildContext context, int index) {
                  return Card(

                    child: Image.network(state.videos[index].small_poster),
                  );


                });
              }
              // else if(state is SearchLoading ){
              //   return Center(child: CircularProgressIndicator());
              // }


                return Container();
            }),
      )
    ],);
  }
  void _getMoreInfo() async{

    //show progressbar
    BlocProvider.of<SearchBloc>(context)
      ..isfetch = true
      ..add(SearchingVideo());



  }

}
