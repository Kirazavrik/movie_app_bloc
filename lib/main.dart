import 'package:flutter/material.dart';
import 'package:simple_movie_app/BLoC/bloc_provider.dart';
import 'package:simple_movie_app/BLoC/trending_movies_bloc.dart';
import 'package:simple_movie_app/views/main_screen.dart';

void main() {
  runApp(SimpleMovieApp());
}

class SimpleMovieApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BlocProvider<TrendingMoviesBloc>(
      bloc: TrendingMoviesBloc(),
      child: MaterialApp(
        title: 'MovieApp',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: MainScreen(),
      ),
    );
  }

}