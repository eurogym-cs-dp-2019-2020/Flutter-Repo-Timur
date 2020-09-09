import 'package:flutter/material.dart';
import 'package:chatapp_first/constants.dart';
import 'package:chatapp_first/models/topic.dart';

import 'desc.dart';
import 'topics.dart';


class Body extends StatelessWidget {
  final Topic topic;

  const Body({Key key, this.topic}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // it will provide us total height and width
    // media query was here
    
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Genres(topic: topic),
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: kDefaultPadding / 2,
              horizontal: kDefaultPadding,
            ),
            child: Text(
              "Topic Summary",
              style: Theme.of(context).textTheme.headline5,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Text(
              topic.topic,
              style: TextStyle(
                color: Color(0xFF737599),
              ),
            ),
          ),
          CastAndCrew(descs: topic.desc),
        ],
      ),
    );
  }
}
