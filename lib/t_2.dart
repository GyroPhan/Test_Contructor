import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 't_3.dart';
Widget Drawer_Custom(a) {
  return Drawer(
    child: ListView(
      // Important: Remove any padding from the ListView.
      padding: EdgeInsets.zero,
      children: <Widget>[
        DrawerHeader(
          child: RaisedButton(
            child: Text(
              'Add',
            ),
            onPressed: () {
              print('t2 a : ${a}');
              Ham(a);
            },
          ),
          decoration: BoxDecoration(
            color: Colors.blue,
          ),
        ),
        ListTile(
          title: Text('Item 1'),
          onTap: () {
            // Update the state of the app.
            // ...
          },
        ),
      ],
    ),
  );
}
