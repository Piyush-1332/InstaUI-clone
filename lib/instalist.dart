import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'instaStories.dart';

class InstaList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var deviceSize = MediaQuery.of(context).size;
    return new ListView.builder(
      itemBuilder: (context, index) => index == 0
          ? new SizedBox(
              height: deviceSize.height * .21,
              child: new InstaStories(),
            )
          : Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,

              //1st row
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 16, 8.0, 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          new Container(
                            height: 30.0,
                            width: 30.0,
                            decoration: new BoxDecoration(
                                shape: BoxShape.circle,
                                image: new DecorationImage(
                                    fit: BoxFit.fill,
                                    image: new NetworkImage(
                                        "https://vignette.wikia.nocookie.net/naruto/images/b/bb/Itachi.png/revision/latest?cb=20160125182202"))),
                          ),
                          new SizedBox(width: 10.0),
                          new Text("iamitachiuchiha",
                              style:
                                  new TextStyle(fontWeight: FontWeight.bold)),
                        ],
                      ),
                      new IconButton(
                        icon: Icon(Icons.more_vert),
                        onPressed: () {},
                      )
                    ],
                  ),
                ),

                //2nd row
                Flexible(
                  fit: FlexFit.loose,
                  child: new Image.network(
                    "https://i.kym-cdn.com/photos/images/original/001/449/812/41a.jpg",
                    fit: BoxFit.cover,
                  ),
                ),

                //3rd row
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      new Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          new Icon(FontAwesomeIcons.heart),
                          new SizedBox(
                            width: 16.0,
                          ),
                          new Icon(FontAwesomeIcons.comment),
                          new SizedBox(
                            width: 16.0,
                          ),
                          new Icon(FontAwesomeIcons.paperPlane)
                        ],
                      ),
                      new Icon(FontAwesomeIcons.bookmark)
                    ],
                  ),
                ),

                //4th row
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: new Text(
                    "Liked by tailless.beast and 52,831 others",
                    style: new TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),

                //5th row
                Padding(
                  padding: EdgeInsets.fromLTRB(16, 16, 0, 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      new Container(
                        height: 35.0,
                        width: 35.0,
                        decoration: new BoxDecoration(
                            shape: BoxShape.circle,
                            image: new DecorationImage(
                                fit: BoxFit.fill,
                                image: NetworkImage(
                                    "https://vignette.wikia.nocookie.net/naruto/images/b/bb/Itachi.png/revision/latest?cb=20160125182202"))),
                      ),
                      new SizedBox(
                        width: 10.0,
                      ),
                      Expanded(
                        child: new TextField(
                          decoration: new InputDecoration(
                              border: InputBorder.none,
                              hintText: "Add a comment ... "),
                        ),
                      ),
                    ],
                  ),
                ),

                //6th row
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text("1 Day Ago",
                      style: new TextStyle(color: Colors.grey)),
                )
              ],
            ),
      itemCount: 6,
    );
  }
}
