import 'package:cartelera_peliculas_flutter/common/httpHandler.dart';
import 'package:cartelera_peliculas_flutter/model/Media.dart';
import 'package:cartelera_peliculas_flutter/model/media_list_item.dart';
import 'package:flutter/material.dart';

class MediaList extends StatefulWidget {
  MediaList({Key? key}) : super(key: key);

  @override
  _MediaLsitState createState() => _MediaLsitState();
}

class _MediaLsitState extends State<MediaList> {
  List<Media> _media = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadMovies();
  }

  void loadMovies() async {
    var movies = await HttpHandler().fetchMovies();
    setState(() {
      _media.addAll(movies);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: new ListView.builder(
            itemCount: _media.length,
            itemBuilder: (BuildContext context, int index) {
              return new MediaListItem(_media[index]);
            }));
  }
}
