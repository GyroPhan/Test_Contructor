import 'package:flutter/material.dart';
import 't_2.dart';
import 't_3.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title, this.button}) : super(key: key);

  final String title;
  final String button;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 1;

  @override
  Widget build(BuildContext context) {
    print('t1 _counter: ${_counter}');
    return Scaffold(
      drawer: Drawer_Custom(_counter),
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
            FlatButton(
              child: Text(widget.button),
            )
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Ham(_counter);
          setState(() {});
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
