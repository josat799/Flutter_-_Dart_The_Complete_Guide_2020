import 'package:flutter/material.dart';

class AddPlaceScreen extends StatefulWidget {
  static const routeNAme = "/add-place";

  @override
  _AddPlaceScreenState createState() => _AddPlaceScreenState();
}

class _AddPlaceScreenState extends State<AddPlaceScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Adda New Place"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text("User input..."),
          RaisedButton.icon(
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              elevation: 0,
              onPressed: () {},
              icon: Icon(Icons.add),
              label: Text("Add Place")),
        ],
      ),
    );
  }
}
