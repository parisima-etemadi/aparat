import 'package:aparat/search/presentation/widgets/search_bar.dart';
import 'package:flutter/material.dart';
class SearchResultWidget extends StatelessWidget {
  const SearchResultWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      SearchBar(),

    ],);
  }
}
