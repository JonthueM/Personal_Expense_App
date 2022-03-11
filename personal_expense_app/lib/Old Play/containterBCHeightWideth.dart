import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter App'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center, //Center within Colum
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Card(child: Container(

            width: double.infinity,
            color: Colors.red,
            child: Text('CHART')),
          elevation: 5,
          ),
          Card(color: Colors.blue, child: Text('LIST OF TX')),
        ],
      ),
    );
  }
}
