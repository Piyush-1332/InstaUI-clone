import 'package:flutter/material.dart';

import 'instalist.dart';

class Instabody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Column(
      children: <Widget>[
        Flexible(
          child: InstaList(),
        )
      ],
    );
  }
}