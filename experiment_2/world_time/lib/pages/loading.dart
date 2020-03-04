import 'package:flutter/material.dart';
import 'package:world_time/classes/world_time.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  void setupWorldTime() async {
    WorldTime instance = WorldTime(location: 'Hong_Kong', flag: 'china.png', url: 'Asia/Hong_Kong');
    await instance.getTime();
    print(instance.time);
  }


  @override
  void initState() {
    super.initState();
    setupWorldTime();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('Loading screen'),
    );
  }
}