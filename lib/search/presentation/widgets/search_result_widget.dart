import 'package:aparat/search/presentation/widgets/search_bar.dart';
import 'package:flutter/material.dart';
class SearchResultWidget extends StatelessWidget {
  const SearchResultWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      SearchBar(),
      // GridView.builder(
      //   itemCount: 10,
      //   itemBuilder: (context, index) => Text("ds",style: TextStyle(color: Colors.black),),
      //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      //     crossAxisCount: 2,
      //   ),
      // )
    ],);
  }
}
