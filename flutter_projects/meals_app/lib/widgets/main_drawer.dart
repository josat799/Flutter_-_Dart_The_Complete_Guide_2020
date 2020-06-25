import 'package:flutter/material.dart';

import '../screens/filters_screen.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            height: 120,
            width: double.infinity,
            padding: const EdgeInsets.all(20),
            alignment: Alignment.centerLeft,
            color: Theme.of(context).accentColor,
            child: Text(
              "Cooking Up!",
              style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 30,
                  color: Theme.of(context).primaryColor),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          buildListTile(Icons.restaurant, "Meals", () {
            Navigator.of(context).pushReplacementNamed("/");
          }),
          buildListTile(Icons.settings, "Settings", () {
            Navigator.of(context).pushReplacementNamed(FiltersScreen.routeName);
          })
        ],
      ),
    );
  }

  ListTile buildListTile(IconData icon, String text, Function tapHandler) {
    return ListTile(
          leading: Icon(icon),
          title: Text(
            text,
            style: TextStyle(
              fontFamily: "RobotoCondensed",
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          onTap: tapHandler,
        );
  }
}
