import 'dart:convert';
import 'package:migliori_film/src/data/models/movies_model.dart';
import 'package:http/http.dart' as http;


  List<Movies> movie = [];

  Future<List<Movies>> getRequest() async {
    String url =
        "https://gist.githubusercontent.com/saniyusuf/406b843afdfb9c6a86e25753fe2761f4/raw/523c324c7fcc36efab8224f9ebb7556c09b69a14/Film.JSON";
    final response = await http.get(Uri.parse(url));

    var responseData = json.decode(response.body);

    for (var singleMovie in responseData) {
      Movies movies = Movies(
        title: singleMovie['Title'],
        year: singleMovie['Year'],
        rated: singleMovie['Rated'],
        released: singleMovie['Released'],
        runtime: singleMovie['Runtime'],
        genre: singleMovie['Genre'],
        director: singleMovie['Director'],
        writer: singleMovie['Writer'],
        actors: singleMovie['Actors'],
        plot: singleMovie['Plot'],
        language: singleMovie['Language'],
        country: singleMovie['Country'],
        awards: singleMovie['Awards'],
        poster: singleMovie['Poster'],
        metascore: singleMovie['Metascore'],
        imdbRating: singleMovie['imdbRating'],
        imdbVotes: singleMovie['imdbVotes'],
        imdbId: singleMovie['imdbID'],
        type: singleMovie['Type'],
        response: singleMovie['Response'],
        images: singleMovie['Images'],);
      movie.add(movies);
    }
    return movie;
  }
