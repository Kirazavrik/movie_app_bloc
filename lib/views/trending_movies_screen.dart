
import 'package:flutter/material.dart';
import 'package:simple_movie_app/BLoC/bloc_provider.dart';
import 'package:simple_movie_app/BLoC/trending_movies_bloc.dart';
import 'package:simple_movie_app/models/trending_movies/trending_movies.dart';

class TrendingMoviesScreen extends StatelessWidget {
  const TrendingMoviesScreen({Key key,}) :
        super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = TrendingMoviesBloc();
    TrendingMovies trendingMovies;
    bloc.sendRequest();
    return BlocProvider<TrendingMoviesBloc>(
      bloc: bloc,
      child: Scaffold(
        appBar: AppBar(title: Text('Movie App'),),
        body: Column(
          children: [
            Text('Bla bla bla'),
            Container(
              child: StreamBuilder<TrendingMovies>(
                stream: bloc.trendingMoviesStream,
                builder: (context, snapshot) {
                  if (snapshot.hasData){
                    trendingMovies = snapshot.data;
                    return Text(trendingMovies.total_results.toString());
                  } else if (snapshot.hasError) {
                    throw Exception('bad');
                  }
                  return CircularProgressIndicator();
                },
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _showTrendingMovies(TrendingMoviesBloc bloc) {
    return Center(
      child: StreamBuilder<TrendingMovies>(
        stream: bloc.trendingMoviesStream,
        builder: (context, snapshot){
          Navigator.of(context).pop();
          final trendingMovies = snapshot.data;
          return Container(
            child: Text(trendingMovies.results[0].original_title),
          );
        },
      ),
    );
  }


}