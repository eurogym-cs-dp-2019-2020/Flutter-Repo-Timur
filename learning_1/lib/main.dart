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
      body: Row(
        children: <Widget>[
          Expanded(child: Image.network('https://www.socialdesire.com/wp-content/uploads/2017/09/shorten-url-feature.png'),
          flex: 1,
          ),
          Expanded(
            flex: 1,
                      child: Container(
              padding: EdgeInsets.all(30),
              color: Colors.cyan,
              child: Text('1'),
            ),
          ),
          Expanded(
            flex: 1,
                      child: Container(
              padding: EdgeInsets.all(30),
              color: Colors.amber,
              child: Text('2'),
            ),
          ),
          Expanded(
            flex: 1,
                      child: Container(
              padding: EdgeInsets.all(30),
              color: Colors.lightBlue,
              child: Text('3'),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text('Click'),
        backgroundColor: Colors.green[600],
      ),
    );
  }
}

