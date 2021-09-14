import 'package:cartelera_peliculas_flutter/media_list.dart';
import 'package:flutter/material.dart';

import 'common/httpHandler.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text("Flutter Movie"),
        actions: [
          new IconButton(
            icon: new Icon(Icons.search, color: Colors.white),
            onPressed: () {},
          )
        ],
      ),
      drawer: new Drawer(
        child: new ListView(
          children: [
            new DrawerHeader(
              child: Material(),
            ),
            new ListTile(
              title: new Text("Peliculas"),
              trailing: new Icon(Icons.local_movies),
            ),
            Divider(
              height: 5.0,
            ),
            new ListTile(
              title: new Text("Television"),
              trailing: new Icon(Icons.live_tv),
            ),
            Divider(
              height: 5.0,
            ),
            new ListTile(
              title: new Text("Cerrar"),
              trailing: new Icon(Icons.close),
              onTap: () => Navigator.of(context).pop(),
            ),
          ],
        ),
      ),
      body: new PageView(
        children: [
          new MediaList()
        ],
      ),
      bottomNavigationBar: new BottomNavigationBar(
        items: _getFooterItems(),
      ),
    );
  }

  List<BottomNavigationBarItem> _getFooterItems() {
    return [
      new BottomNavigationBarItem(
        icon: new Icon(Icons.thumb_up, color: Colors.white),
        label: "Populares",
      ),
      new BottomNavigationBarItem(
        icon: new Icon(Icons.update, color: Colors.white),
        label: "Proximamente",
      ),
      new BottomNavigationBarItem(
        icon: new Icon(Icons.star, color: Colors.white),
        label: "Mejor valoradas",
      ),
    ];
  }


}
