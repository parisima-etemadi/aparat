import 'package:aparat/search/presentation/widgets/search_result_widget.dart';
import 'package:flutter/material.dart';

class SearchResultPage extends StatelessWidget {
  const SearchResultPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(body: SearchResultWidget(),));
  }
}
