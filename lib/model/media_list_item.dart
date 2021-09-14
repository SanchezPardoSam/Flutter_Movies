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
          new Container(
            child: new Stack(
              children: [
                new FadeInImage.assetNetwork(
                  placeholder: "assets/placeholder.jpg",
                  image: media.getBackDropUrl(),
                  fit: BoxFit.cover,
                  fadeInDuration: new Duration(milliseconds: 40),
                  height: 200.0,
                  width: double.infinity,
                ),
                new Positioned(
                  child: new Container(
                    decoration: new BoxDecoration(
                      color: Colors.grey[900]!.withOpacity(0.5),
                    ),
                    constraints: new BoxConstraints.expand(height: 55.5),                   
                  ),
                  left: 0.0,
                  right: 0.0,
                  bottom: 0.0,
                ),
                new Positioned(
                  left: 10.0,                  
                  bottom: 18.0,
                  child: new Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      new Container(
                        //padding: const EdgeInsets.only(top: 8.0),
                        child: new Text(
                          media.title,
                          style: new TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      new Container(
                        padding: const EdgeInsets.only(top: 4.0),
                        child: new Text(
                          media.getGenres(),
                          style: new TextStyle(
                            color: Colors.white,                            
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis

                        ),
                      ),
                    ],
                  ),
                ),
                new Positioned(
                  child: new Container(
                    child: Container(
                      child: Row(
                        children: [
                          new  Text(media.releaseDate.substring(0,4) + ' '),
                          new Icon(Icons.calendar_today_outlined),
                        ],
                      )
                    )                            
                  ),                  
                  right: 20.0,
                  bottom: 14.0,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
