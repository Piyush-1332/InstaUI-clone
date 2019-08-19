import 'package:flutter/material.dart';

import 'Instabody.dart';

class AppBody extends StatelessWidget {
  final topbar = new AppBar(
    backgroundColor: new Color(0xfff8faf8),
    centerTitle: false,
    elevation: 1.0,
    leading: new IconButton(
      icon: Icon(Icons.camera_alt),
      onPressed: () {},
      color: Colors.black,
    ),
    title: SizedBox(
      height: 35.0,
      child: Image.network(
          "https://raw.githubusercontent.com/iampawan/Flutter-Instagram-UI-Clone/master/assets/images/insta_logo.png"),
    ),
    actions: <Widget>[
      new IconButton(
          onPressed: () {},
          icon: Image.network(
              "https://cdn0.iconfinder.com/data/icons/social-media-2222/64/IGTV-512.png"),
        ),
      Padding(
        padding: const EdgeInsets.only(right: 6.0),
        child: IconButton(
          icon: Icon(Icons.send),
          onPressed: () {},
          color: Colors.black,
        ),
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: topbar,
      body: Instabody(),
      bottomNavigationBar: new Container(
        color: Colors.white,
        height: 50.0,
        alignment: Alignment.center,
        child: new BottomAppBar(
          child: new Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              new IconButton(
                icon: Icon(Icons.home),
                onPressed: () {},
              ),
              new IconButton(
                color: Colors.grey,
                icon: Icon(Icons.search),
                onPressed: () {},
              ),
              new IconButton(
                color: Colors.grey,
                icon: Icon(Icons.add_box),
                onPressed: () {},
              ),
              new IconButton(
                color: Colors.grey,
                icon: Icon(Icons.favorite),
                onPressed: () {},
              ),
              new IconButton(
                color: Colors.grey,
                icon: Icon(Icons.account_box),
                onPressed: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
