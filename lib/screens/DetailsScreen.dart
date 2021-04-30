

//import 'dart:html';
import 'package:flutter/cupertino.dart';
import 'package:myapp/Details.dart';
import 'package:myapp/models/locationClass.dart';
import 'package:flutter/material.dart';
import 'package:myapp/screens/LoginPage.dart';
import 'package:url_launcher/url_launcher.dart';
//import 'Details.dart';
//import 'models/Locations.dart';





class locationDescription extends StatelessWidget {
  final Location L;
  locationDescription({this.L});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          'Details',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView(
        children: <Widget>[
          Padding(padding: EdgeInsets.all(25),),

          Container(
            width: 250,
            height: 250,
            child: Image.network(L.imageUrl),
          ),
          Padding(padding: EdgeInsets.all(20)),

          Container(
              child: Text(
                L.description,
                style: TextStyle(fontSize: 20, ),
              )),

        ],
      ),

      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add_location_alt),
        onPressed: () {
          launch(L.locationUrl);

        },
      ),
      
    );
  }
}