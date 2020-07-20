import 'package:flutter/material.dart';

import '../screens/add_places.dart';

class PlacesListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Your places"),
        actions: <Widget>[IconButton(icon: Icon(Icons.add), onPressed: () {
          Navigator.of(context).pushNamed(AddPlaceScreen.routeNAme);

        })],
      ),
      body: Center(child: CircularProgressIndicator(),),
    );
  }
}
