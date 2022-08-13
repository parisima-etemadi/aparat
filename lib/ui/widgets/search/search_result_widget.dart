import 'dart:async';


import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../domain/blocs/pagination/cubit/aparat_pagination_cubit.dart';
import '../../../../domain/blocs/search/search_bloc.dart';
import 'aparat_pagination.dart';
import 'search_bar.dart';

import 'package:aparat/injection_container.dart';

class SearchResultWidget extends StatefulWidget {
  const SearchResultWidget({Key? key}) : super(key: key);

  @override
  State<SearchResultWidget> createState() => _SearchResultWidgetState();
}

class _SearchResultWidgetState extends State<SearchResultWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SearchBar(),
      AparatPaginationWidget( ),
      ],
    );
  }
}
