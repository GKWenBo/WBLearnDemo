import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    title: 'title',
    home: new TutoriaHome(),
  ));
}

class TutoriaHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
// TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        leading: new IconButton(
            icon: new Icon(Icons.menu),
            onPressed: null,
            tooltip: 'navaigate menu'),
        title: new Text('Example Text'),
        actions: <Widget>[
          new IconButton(
              icon: new Icon(Icons.search), tooltip: 'search', onPressed: null),
        ],
      ),
      body: new Center(
        child: new Text('Hello World!'),
      ),
      floatingActionButton: new FloatingActionButton(
          onPressed: null, tooltip: 'add', child: new Icon(Icons.map)),
    );
  }
}
