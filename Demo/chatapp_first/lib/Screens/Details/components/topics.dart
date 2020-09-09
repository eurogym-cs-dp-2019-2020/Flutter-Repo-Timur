import 'package:flutter/material.dart';
import 'package:chatapp_first/components/genre_card.dart';
import 'package:chatapp_first/models/topic.dart';

import '../../../constants.dart';

class Genres extends StatelessWidget {
  const Genres({
    Key key,
    @required this.topic,
  }) : super(key: key);

  final Topic topic;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
      child: SizedBox(
        height: 36,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: topic.genra.length,
          itemBuilder: (context, index) => GenreCard(
            genre: topic.genra[index],
          ),
        ),
      ),
    );
  }
}
