part of 'search_bloc.dart';

@immutable
abstract class SearchState {}

class SearchInitial extends SearchState {}

class SearchNotFound extends SearchState{}

class SearchError extends SearchState{}

class SearchLoaded extends SearchState{}

class SearchLoading extends SearchState{}