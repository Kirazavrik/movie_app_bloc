import 'package:simple_movie_app/models/trending_movies/trending_movie.dart';

class TrendingMovies {

  final int page;
  final List<TrendingMovie> results;
  final int total_pages;
  final int total_results;

	TrendingMovies.fromJsonMap(Map<String, dynamic> map):
		page = map["page"],
		results = List<TrendingMovie>.from(map["results"].map((it) => TrendingMovie.fromJsonMap(it))),
		total_pages = map["total_pages"],
		total_results = map["total_results"];

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['page'] = page;
		data['results'] = results != null ? 
			this.results.map((v) => v.toJson()).toList()
			: null;
		data['total_pages'] = total_pages;
		data['total_results'] = total_results;
		return data;
	}
}
