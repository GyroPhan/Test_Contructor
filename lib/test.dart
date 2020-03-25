import 'package:flutter/material.dart';
import 't_2.dart';
import 't_3.dart';
import 't_4.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title, this.button}) : super(key: key);

  final String title;
  final String button;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 2;

  @override
  Widget build(BuildContext context) {
    print('t1 _counter: ${_counter}');
    return Scaffold(
      drawer: Drawer_Custom(_counter), //tạo 1 Widget ở trang khác, truyền vào trang này, Widget có nút nhấn để cộng số và setState class này
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            t_4(), // tạo 1 class khác ở trang khác, và truyền vào trang này, muốn nhấn nút thì setstate ở class này
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
          _counter = Ham(_counter); //muốn đặt funtion ở 1 trang khác để dễ quản lý, nhưng truyền ngược lại nó ko setstate
          setState(() {});
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
