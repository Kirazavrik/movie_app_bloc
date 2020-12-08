
class TrendingMovie {

  final bool video;
  final double vote_average;
  final String overview;
  final String release_date;
  final int vote_count;
  final bool adult;
  final String backdrop_path;
  final String title;
  final List<int> genre_ids;
  final int id;
  final String original_language;
  final String original_title;
  final String poster_path;
  final double popularity;
  final String media_type;

	TrendingMovie.fromJsonMap(Map<String, dynamic> map):
		video = map["video"],
		vote_average = map["vote_average"],
		overview = map["overview"],
		release_date = map["release_date"],
		vote_count = map["vote_count"],
		adult = map["adult"],
		backdrop_path = map["backdrop_path"],
		title = map["title"],
		genre_ids = List<int>.from(map["genre_ids"]),
		id = map["id"],
		original_language = map["original_language"],
		original_title = map["original_title"],
		poster_path = map["poster_path"],
		popularity = map["popularity"],
		media_type = map["media_type"];

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['video'] = video;
		data['vote_average'] = vote_average;
		data['overview'] = overview;
		data['release_date'] = release_date;
		data['vote_count'] = vote_count;
		data['adult'] = adult;
		data['backdrop_path'] = backdrop_path;
		data['title'] = title;
		data['genre_ids'] = genre_ids;
		data['id'] = id;
		data['original_language'] = original_language;
		data['original_title'] = original_title;
		data['poster_path'] = poster_path;
		data['popularity'] = popularity;
		data['media_type'] = media_type;
		return data;
	}
}
