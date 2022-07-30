import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/search_bloc.dart';
import '../widgets/search_result_widget.dart';

class SearchResultPage extends StatelessWidget {
  const SearchResultPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(body: BlocProvider(
      create: (context) => SearchBloc(),
      child: SearchResultWidget(),
    ),));
  }
}
