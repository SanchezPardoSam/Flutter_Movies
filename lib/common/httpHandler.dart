import 'dart:convert';
import 'dart:async';
import 'package:cartelera_peliculas_flutter/model/Media.dart';
import 'package:http/http.dart' as http;
import 'Constansts.dart';

class HttpHandler {
  final String _baseUrl = 'api.themoviedb.org';
  final String _lenguaje = 'es-Es';

  Future<dynamic> getJson(Uri uri) async {
    http.Response response = await http.get(uri);
    return json.decode(response.body);
  }

  Future<List<Media>> fetchMovies() {
    var uri = new Uri.https(_baseUrl, "3/movie/popular", {
      'api_key' : API_KEY,
      'page': "1",
      'lenguaje': _lenguaje
    });
    return getJson(uri).then(((value) => 
      value['results'].map<Media>((item) => new Media(item)).toList()
    ));
  }
}
