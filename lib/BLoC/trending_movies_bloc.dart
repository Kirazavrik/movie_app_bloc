import 'dart:async';

import 'package:simple_movie_app/BLoC/bloc.dart';
import 'package:simple_movie_app/models/trending_movies/trending_movies.dart';
import 'package:simple_movie_app/utils/tmdb_client.dart';

class TrendingMoviesBloc implements Bloc {
  final _controller = StreamController<TrendingMovies>();
  final _client = TmdbClient();
  Stream<TrendingMovies> get trendingMoviesStream => _controller.stream;

  void sendRequest() async {
    final results = await _client.fetchTrendingMovies();
    _controller.sink.add(results);
  }

  @override
  void dispose() {
    _controller.close();
  }

}