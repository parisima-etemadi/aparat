import 'dart:developer' as developer;
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:aparat/injection_container.dart';
import '../../../domain/blocs/pagination/cubit/aparat_pagination_cubit.dart';
import '../../../domain/blocs/search/search_bloc.dart';
import '../../../domain/models/search/video_model.dart';

class AparatPaginationWidget extends StatefulWidget {
  const AparatPaginationWidget({Key? key, required this.videoLists})
      : super(key: key);
  final List<VideoModel> videoLists;
  @override
  State<AparatPaginationWidget> createState() => _AparatPaginationWidgetState();
}

class _AparatPaginationWidgetState extends State<AparatPaginationWidget> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AparatPaginationCubit(),
      child: BlocBuilder<AparatPaginationCubit, AparatPaginationState>(
        builder: (context, state) {
          developer.log(state.toString(), name: 'state Aparat');

          if (state is AparatPaginationInitial) return Center(child: Text(""));

          if (state is AparatPaginationLoaded)
            return Center(child: Text("aparat loadded"));
          return Center(child: Text("no"));
        },
      ),
    );
  }
}
