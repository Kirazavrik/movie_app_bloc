
import 'package:flutter/material.dart';
import 'package:simple_movie_app/BLoC/bloc_provider.dart';
import 'package:simple_movie_app/BLoC/trending_movies_bloc.dart';
import 'package:simple_movie_app/models/trending_movies/trending_movies.dart';
import 'package:simple_movie_app/views/trending_movies_screen.dart';

class MainScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<TrendingMovies>(
      stream: BlocProvider.of<TrendingMoviesBloc>(context).trendingMoviesStream,
      builder: (context, snapshot){
        final trendingMovies = snapshot.data;
        if (trendingMovies == null) {
          return TrendingMoviesScreen();
        }
        return Center(
          child: Text('Oops, something go wrong'),
        );
      },
    );
  }
  
}