

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/Details.dart';
import 'package:myapp/data/Locations.dart';
import 'package:myapp/models/locationClass.dart';
import 'package:url_launcher/url_launcher.dart';

import '../main.dart';
import 'DetailsScreen.dart';

class FavLocationPage extends StatefulWidget {
 // @override
  _FavLocationPageState createState() => _FavLocationPageState();
  static BuildContext context;
  static List<Location> locations = ( locationsAll()).listobj;
}

class _FavLocationPageState extends State<FavLocationPage> {
  // ignore: non_constant_identifier_names
  List<Location> PopularLocations = FavLocationPage.locations;
 // @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          // just like the screenshot in the milestone description
        ),
        appBar: AppBar(
          title: Text('Choose Location'),
          backgroundColor: Colors.blue,
        ),
        body: CardListView(context), //the list of the 5 cards
      ),
    );
  }

  Widget CardListView(context) {
    return ListView.builder(
      itemCount: PopularLocations.length,
      itemBuilder: (context,i){
        return GestureDetector(
          child: Card(

            child: Container(

                child: Column(
                    children: <Widget>[
                      Padding(padding: EdgeInsets.all(10.0)),
                      Container(
                          height: 300,
                          width: 400,
                          child: Image.network(PopularLocations[i].imageUrl)),
                      //the image that appears on the card


                  Padding(
                    padding:  EdgeInsets.all(0.5),
                  ),
                      //to add spaces between image and name

                      Container(


                          child: Text(
                            PopularLocations[i].name,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.black87,
                                fontSize: 25),
                          )

                      ),
                      Padding(padding: EdgeInsets.all(3)),
                      Container(
                        child: Text(
                          PopularLocations[i].theme,
                        ),
                      ),
                      Padding(padding: EdgeInsets.all(7)),



                ])),
          ),




          onTap: () {
            Navigator.push(
                context ,
                MaterialPageRoute(builder: (context) =>  locationDescription(L:PopularLocations[i])));
          },
        );
      },

    );

  }


}
