import 'package:flutter/material.dart';

import '../../../constants.dart';
import 'desc_card.dart';

class CastAndCrew extends StatelessWidget {
  final List descs;

  const CastAndCrew({Key key, this.descs}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(kDefaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Description",
            style: Theme.of(context).textTheme.headline5,
          ),
          SizedBox(height: kDefaultPadding),
          SizedBox(
            height: 160,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: descs.length,
              itemBuilder: (context, index) => DescCard(desc: descs[index]),
            ),
          )
        ],
      ),
    );
  }
}

