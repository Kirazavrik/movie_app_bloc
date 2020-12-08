import 'dart:convert';

import 'package:simple_movie_app/models/trending_movies/trending_movies.dart';
import 'package:http/http.dart' as http;

class TmdbClient {
  final _apiKey = '890a61481a65af389499a26bd8be80ef';
  final host = 'https://api.themoviedb.org/3/trending/all/day?api_key=';

  Future<TrendingMovies> fetchTrendingMovies() async {
    final response = await http.get(host + _apiKey);

    if (response.statusCode == 200) {
      return TrendingMovies.fromJsonMap(json.decode(response.body));
    } else {
      throw Exception('failed');
    }
  }
}