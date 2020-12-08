import 'package:simple_movie_app/models/trending_movies/results.dart';

class Response {

  final int page;
  final List<Results> results;
  final int total_pages;
  final int total_results;

	Response.fromJsonMap(Map<String, dynamic> map): 
		page = map["page"],
		results = List<Results>.from(map["results"].map((it) => Results.fromJsonMap(it))),
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
