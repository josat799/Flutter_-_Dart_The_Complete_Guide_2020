import 'package:flutter/material.dart';

class TextControl extends StatelessWidget {
  final Function interactor;

  TextControl(this.interactor);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(child: Text("Press me"),onPressed: interactor);
  }
}
