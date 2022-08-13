import 'package:aparat/data/repositories/video_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:aparat/injection_container.dart';
import '../../../data/data provider/Video_data_provider.dart';
import '../../../domain/blocs/pagination/cubit/aparat_pagination_cubit.dart';
import '../../../domain/blocs/search/search_bloc.dart';
import '../widgets/search_result_widget.dart';

class SearchResultPage extends StatelessWidget {
  const SearchResultPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: MultiBlocProvider(
        providers: [
          BlocProvider<SearchBloc>(
            create: (BuildContext context) => dI<SearchBloc>(),
          ),
          BlocProvider<AparatPaginationCubit>(
            create: (BuildContext context) => dI<AparatPaginationCubit>(),
          ),
        ],

        // (context) => dI<SearchBloc>(),
        child: SearchResultWidget(),
      ),
    ));
  }
}
