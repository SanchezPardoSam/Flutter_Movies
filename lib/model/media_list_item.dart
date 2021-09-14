import 'package:cartelera_peliculas_flutter/model/Media.dart';
import 'package:flutter/material.dart';

class MediaListItem extends StatelessWidget {
  final Media media;
  MediaListItem(this.media);

  @override
  Widget build(BuildContext context) {
    return new Card(
      child: new Column(
        children: [
          new FadeInImage.assetNetwork(
            placeholder: "assets/placeholder.jpg", 
            image: media.getBackDropUrl(),
            fit: BoxFit.cover,
            fadeInDuration: new Duration(milliseconds: 40),
            height: 200.0,
            width: double.infinity,
            )
        ],
      ),
    );
  }
}
