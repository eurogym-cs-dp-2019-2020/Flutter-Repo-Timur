  import 'package:flutter/material.dart';

  void main() => runApp(MaterialApp(
    home: Home(),
  ));

  class Home extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return Scaffold(
      appBar: AppBar(
        title: Text('First App'),
        centerTitle: true,
        backgroundColor: Colors.green[600],
      ),
      body: Padding(
        padding: EdgeInsets.all(100),
        child: Text('HELLO WORLD'),
      ),
     
    );
  }
}

