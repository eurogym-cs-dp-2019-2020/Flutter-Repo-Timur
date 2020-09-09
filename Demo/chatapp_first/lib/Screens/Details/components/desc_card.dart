import 'package:flutter/material.dart';

import '../../../constants.dart';

class DescCard extends StatelessWidget {
  final Map desc;

  const DescCard({Key key, this.desc}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: kDefaultPadding),
      width: 80,
      child: Column(
        children: <Widget>[
          Container(
            height: 80,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(
                  desc['image'],
                ),
              ),
            ),
          ),
          SizedBox(height: kDefaultPadding / 2),
          Text(
            desc['orginalName'],
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyText2,
            maxLines: 2,
          ),
          SizedBox(height: kDefaultPadding / 4),
          Text(
            desc['movieName'],
            maxLines: 1,
            textAlign: TextAlign.center,
            style: TextStyle(color: kTextLightColor),
          ),
        ],
      ),
    );
  }
}
