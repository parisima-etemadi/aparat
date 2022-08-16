import 'package:flutter/material.dart';

import 'aparat_pagination.dart';
import 'search_bar.dart';

class SearchResultWidget extends StatefulWidget {
  const SearchResultWidget({Key? key}) : super(key: key);

  @override
  State<SearchResultWidget> createState() => _SearchResultWidgetState();
}

class _SearchResultWidgetState extends State<SearchResultWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        SearchBar(),
        Expanded(child: AparatPaginationWidget()),
      ],
    );
  }
}
