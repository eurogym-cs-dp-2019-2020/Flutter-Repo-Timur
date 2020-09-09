import 'package:flutter/material.dart';
import 'package:chatapp_first/models/topic.dart';
import 'package:chatapp_first/screens/details/components/body.dart';

class DetailsScreen extends StatelessWidget {
  final Topic topic;

  const DetailsScreen({Key key, this.topic}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(topic: topic),
    );
  }
}
