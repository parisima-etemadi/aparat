import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/search_bloc.dart';



class SearchResultWidget extends StatelessWidget {
  const SearchResultWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      // SearchBar(),
      Container(
        height: 200,
        child: GridView.builder(
          itemCount: 10,
          itemBuilder: (context, index) =>
              BlocBuilder<SearchBloc, SearchState>(
                builder: (context, state) {
                  return Container(color:Colors.red,child: Text("fgfg", style: TextStyle(color: Colors.black),));
                },
              ),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
        ),
      )
    ],);
  }
}
