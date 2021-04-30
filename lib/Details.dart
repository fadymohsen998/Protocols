// TODO Implement this library.


//not used in this milestone

import 'package:flutter/material.dart';
class Details extends StatelessWidget {
  final int index;
  Details(this.index);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text(('Card $index')),
        centerTitle: true,

      ),
      body: Center(child: Text('This Is Card $index'),),
    );
  }
}
