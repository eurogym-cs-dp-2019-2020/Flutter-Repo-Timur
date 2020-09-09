import 'package:flutter/material.dart';

import 'dart:math' as math;

import 'package:chatapp_first/models/topic.dart';

import 'package:chatapp_first/constants.dart';
import 'package:chatapp_first/Screens/Selection/topic_card.dart';

class TopicCarousel extends StatefulWidget {
  @override
  _TopicCarouselState createState() => _TopicCarouselState();
}

class _TopicCarouselState extends State<TopicCarousel> {
  PageController _pageController;
  int initialPage = 1;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(
      // so that we can have small portion shown on left and right side
      viewportFraction: 0.8,
      // by default our movie poster
      initialPage: initialPage,
    );
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: AspectRatio(
        aspectRatio: 0.85,
        child: PageView.builder(
          onPageChanged: (value) {
            setState(() {
              initialPage = value;
            });
          },
          controller: _pageController,
          physics: ClampingScrollPhysics(),
          itemCount: topics.length, // we have 3 demo movies
          itemBuilder: (context, index) => buildTopicSlider(index),
        ),
      ),
    );
  }

  Widget buildTopicSlider(int index) => AnimatedBuilder(
        animation: _pageController,
        builder: (context, child) {
          double value = 0;
          if (_pageController.position.haveDimensions) {
            value = index - _pageController.page;
            // We use 0.038 because 180*0.038 = 7 almost and we need to rotate our poster 7 degree
            // we use clamp so that our value vary from -1 to 1
            value = (value * 0.038).clamp(-1, 1);
          }
          return AnimatedOpacity(
            duration: Duration(milliseconds: 350),
            opacity: initialPage == index ? 1 : 0.4,
            child: Transform.rotate(
              angle: math.pi * value,
              child: TopicCard(topic: topics[index]),
            ),
          );
        },
      );
}
