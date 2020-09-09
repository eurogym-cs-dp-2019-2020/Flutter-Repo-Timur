import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:chatapp_first/models/topic.dart';
import 'package:chatapp_first/screens/details/details_screen.dart';
import 'package:chatapp_first/constants.dart';

class TopicCard extends StatelessWidget {
  final Topic topic;

  const TopicCard({Key key, this.topic}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: OpenContainer(
        closedElevation: 0,
        openElevation: 0,
        closedBuilder: (context, action) => buildTopicCard(context),
        openBuilder: (context, action) => DetailsScreen(topic: topic),
      ),
    );
  }

  Column buildTopicCard(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              boxShadow: [kDefaultShadow],
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(topic.poster),
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
          child: Text(
            topic.title,
            style: Theme.of(context)
                .textTheme
                .headline5
                .copyWith(fontWeight: FontWeight.w600),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SvgPicture.asset(
              "assets/icons/star_fill.svg",
              height: 20,
            ),
            SizedBox(width: kDefaultPadding / 2),
          ],
        )
      ],
    );
  }
}
