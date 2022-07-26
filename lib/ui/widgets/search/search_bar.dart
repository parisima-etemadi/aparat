import 'package:aparat/domain/blocs/pagination/cubit/aparat_pagination_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchBar extends StatefulWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  String keyWord = "";

  final textFieldController = TextEditingController();
  @override
  Widget build(BuildContext context) {

    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      width: double.infinity,
      height: 40,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(5)),
      child: TextField(
        key: Key("searchKey"),
        controller: textFieldController,
        decoration: InputDecoration(
            prefixIcon: IconButton(
              icon: Icon(Icons.search,key: Key("searchIconKey"),),
              onPressed: () {
                print("=====onPressed=======");
                if (textFieldController.text.isEmpty) {
                  // context.read()<SearchBloc>.add(SearchingVideo(textFieldController.text).)
                  Scaffold.of(context).showSnackBar(SnackBar(
                    content: Text("please fill the search bar 😇"),
                  ));
                } else if (textFieldController.text.length <= 1) {
                  // context.read()<SearchBloc>.add(SearchingVideo(textFieldController.text).)
                  Scaffold.of(context).showSnackBar(SnackBar(
                    content: Text(
                        "seach field must be more than 1 single charachter 😅"),
                  ));
                }

                  BlocProvider.of<AparatPaginationCubit>(context)
                    ..oldListVideos=[]
                    ..searchKey=textFieldController.text
                    ..perPage=1
                ..loadMoreVideos();
              },
            ),
            suffixIcon: IconButton(
              icon: const Icon(Icons.clear),
              onPressed: () {
                textFieldController.text = "";
              },
            ),
            hintText: 'Search...',
            border: InputBorder.none),
      ),
    );
  }
}
