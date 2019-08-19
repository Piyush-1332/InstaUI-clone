import 'package:flutter/material.dart';

class InstaStories extends StatelessWidget {
  final toptext = Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      Text("Stories", style: new TextStyle(fontWeight: FontWeight.bold)),
      new Row(
        children: <Widget>[
          new Icon(Icons.play_arrow),
          new Text("Watch All",
              style: new TextStyle(fontWeight: FontWeight.bold))
        ],
      )
    ],
  );

  final stories = new Expanded(
      child: Padding(
    padding: const EdgeInsets.only(top: 8.0),
    child: new ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 6,
      itemBuilder: (context, i) => new Stack(
        alignment: Alignment.bottomRight,
        children: <Widget>[
          new Container(
            height: 60.0,
            width: 60.0,
            decoration: new BoxDecoration(
                shape: BoxShape.circle,
                image: new DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage(
                        "https://vignette.wikia.nocookie.net/naruto/images/b/bb/Itachi.png/revision/latest?cb=20160125182202"))),
            margin: const EdgeInsets.all(8.0),
          ),
          i == 0
              ? Positioned(
                  right: 10.0,
                  child: CircleAvatar(
                    backgroundColor: Colors.blueAccent,
                    child: Icon(
                      Icons.add,
                      size: 14.0,
                      color: Colors.white,
                    ),
                    radius: 10.0,
                  ),
                )
              : new Container()
        ],
      ),
    ),
  ));

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16.0),
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          toptext,
          stories,
        ],
      ),
    );
  }
}
