import 'package:flutter/material.dart';


class MyAppBar extends StatelessWidget {
  MyAppBar({this.title});

  final Widget title;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
      height: 88.0,
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      decoration: new BoxDecoration(color: Colors.blue[500]),
      child: new Row(
        children: <Widget>[
          new IconButton(icon: new Icon(Icons.menu) , onPressed: null, tooltip: 'navigation menu'),
          new Expanded(child: title),
          new IconButton(icon: new Icon(Icons.search), onPressed: null, tooltip: 'search'),
        ],
      ),
    );
  }
}

class MyScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Material(
      child: new Column(
        children: <Widget>[
          new MyAppBar(
            title: new Text(
              'example text',
              style: Theme.of(context).primaryTextTheme.title,
            ),
          ),
          new Expanded(child: new Center(
            child: new Text('Hello word!'),
          ))
        ],
      ),
    );
  }
}

void main() {
  runApp(new MaterialApp(
    title: 'test',
    home: new MyScaffold(),
  ));
}