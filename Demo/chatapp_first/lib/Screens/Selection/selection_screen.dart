import 'package:chatapp_first/Screens/Selection/topic_carousel.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:flutter_svg/svg.dart';
import 'package:chatapp_first/constants.dart';
import 'dart:math' as math;
import 'package:chatapp_first/models/topic.dart';
import 'topic_card.dart';
// import '../../components/topic_card.dart';
// import 'components/health.dart';
// import 'components/soc_pol.dart';
// import 'components/technology.dart';

var screens = [ChatScreen(), HomeScreen(), ExploreScreen()];
// TODO: decide what to do with the screens


class MainScreen extends StatefulWidget { 
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.black87,
          child: Column(
            children: <Widget>[
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    IconButton(
                        padding: EdgeInsets.only(left: kDefaultPadding),
                        icon: SvgPicture.asset("assets/icons/menu.svg"),
                        onPressed: () {},
                        ),
                    Row(
                      children: <Widget>[
                        SizedBox(
                          width: 10,
                        ),
                        Image.asset(
                          "assets/images/profile.png",
                          width: 25,
                          height: 25,
                        )
                      ],
                    )
                  ],
                ),
              ),
              screens[_selectedIndex],
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: BottomNavigationBar(
                  elevation: 0.0,
                  backgroundColor: Colors.transparent,
                  unselectedIconTheme: IconThemeData(size: 20.0),
                  selectedIconTheme: IconThemeData(size: 30.0),
                  unselectedFontSize: 15.0,
                  unselectedItemColor: Colors.white,
                  selectedItemColor: Colors.deepPurple,
                  currentIndex: _selectedIndex,
                  onTap: (index) {
                    this.setState(() {
                      _selectedIndex = index;
                    });
                  },
                  items: [
                    BottomNavigationBarItem(
                        title: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Chats"),
                        ),
                        icon: Icon(Icons.chat)),
                    BottomNavigationBarItem(
                        title: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Home"),
                        ),
                        icon: Icon(Icons.games)),
                    BottomNavigationBarItem(
                        title: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Media"),
                        ),
                        icon: Icon(Icons.settings_cell))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(height: kDefaultPadding),
          TopicCarousel(),
        ],
      ),
    );
  }
}
// TODO: Change variable names
// TODO: add ChatScreen

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}





class ExploreScreen extends StatelessWidget {
  // TODO: Change previews
  final data = [
    {
      "banner": "apex_banner",
      "title": "Youtube Guide",
      "message": "How this works."
      },
    {
      "banner": "destiny_banner",
      "title": "Stadia",
      "message": "Stadia Community Forums"
      },
    {
      "banner": "pubg_banner", 
      "title": "Youtube", 
      "message": "PUBG Events"
      }
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Expanded(
        child: Stack(
      fit: StackFit.expand,
      children: <Widget>[
        Image.asset(
          "assets/images/stadia_mono.png",
          color: Colors.white10,
          fit: BoxFit.cover,
          scale: 10.0,
          alignment: Alignment.center,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 40, 20, 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      IconButton(
                          icon: Icon(MdiIcons.youtube),
                          // TODO: make video guidelines/explanation
                          color: Colors.white,
                          onPressed: () {}),
                      SizedBox(
                        width: 20.0,
                      ),
                      IconButton(
                          icon: Icon(MdiIcons.book),
                          // TODO: make text guidelines
                          color: Colors.white,
                          onPressed: () {}),
                    ],
                  ),
                ),
                ListView.builder(
                    primary: false,
                    shrinkWrap: true,
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          child: AspectRatio(
                              aspectRatio: 16 / 9,
                              child: Stack(
                                children: <Widget>[
                                  Image.asset(
                                    "assets/images/${data[index]["banner"]}.jpg",
                                    fit: BoxFit.cover,
                                  ),
                                  SizedBox.expand(
                                    child: Container(
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(colors: [
                                          Colors.black87,Colors.transparent
                                        ],
                                        begin: Alignment.bottomCenter,end: Alignment.topCenter)
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(20.0),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          mainAxisAlignment: MainAxisAlignment.end,
                                          children: <Widget>[
                                            Text(data[index]["title"],style: TextStyle(color: Colors.white,fontSize: 15),),
                                            SizedBox(
                                              height: 5.0,
                                            ),
                                            Text(data[index]["message"],style: TextStyle(color: Colors.white,fontSize: 25.0),)
                                          ],
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              )),
                        ),
                      );
                    })
              ],
            ),
          ),
        )
      ],
    ));
  }
}
