import 'package:flutter/material.dart';

class t_4 extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return t_4_State();
  }
}

class t_4_State extends State<t_4> {
  int b = 0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: RaisedButton(
        child: Text('${b}'),
        onPressed: () {
          setState(() {
           b = b++;
          });
        },
      ),
    );
  }
}
