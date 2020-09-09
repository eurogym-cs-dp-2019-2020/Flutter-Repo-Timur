// Our movie model
class Topic {
  final int id;
  final String topic, title, poster, backdrop;
  final List<Map> desc;
  final List<String> genra;

  Topic({
    this.poster,
    this.backdrop,
    this.title,
    this.topic,
    this.desc,
    this.id,
    this.genra,
  });
}

// our demo data movie data
List<Topic> topics = [
  Topic(
    id: 1,
    title: "Education",
    poster: "assets/images/poster_1.jpg",
    backdrop: "assets/images/backdrop_1.jpg",
    topic: topicText,
    genra: ["Filler 1", "Filler 2"],
    desc: [
      {
        "orginalName": "James Mangold",
        "movieName": "Director",
        "image": "assets/images/actor_1.png",
      },
      {
        "orginalName": "Matt Damon",
        "movieName": "Carroll",
        "image": "assets/images/actor_2.png",
      },
      {
        "orginalName": "Christian Bale",
        "movieName": "Ken Miles",
        "image": "assets/images/actor_3.png",
      },
      {
        "orginalName": "Caitriona Balfe",
        "movieName": "Mollie",
        "image": "assets/images/actor_4.png",
      },
    ],
  ),
  Topic(
    id: 2,
    title: "Social/Political",
    poster: "assets/images/poster_2.jpg",
    backdrop: "assets/images/backdrop_2.jpg",
    topic: topicText,
    genra: ["Filler 1", "Filler 2"],
    desc: [
      {
        "orginalName": "James Mangold",
        "movieName": "Director",
        "image": "assets/images/actor_1.png",
      },
      {
        "orginalName": "Matt Damon",
        "movieName": "Carroll",
        "image": "assets/images/actor_2.png",
      },
      {
        "orginalName": "Christian Bale",
        "movieName": "Ken Miles",
        "image": "assets/images/actor_3.png",
      },
      {
        "orginalName": "Caitriona Balfe",
        "movieName": "Mollie",
        "image": "assets/images/actor_4.png",
      },
    ],
  ),

  Topic(
    id: 3,
    title: "Technology",
    poster: "assets/images/poster_3.jpg",
    backdrop: "assets/images/backdrop_3.jpg",
    topic: topicText,
    genra: ["Filler 1", "Filler 2", "Filler 3"],
    desc: [
      {
        "orginalName": "James Mangold",
        "movieName": "Director",
        "image": "assets/images/actor_1.png",
      },
      {
        "orginalName": "Matt Damon",
        "movieName": "Carroll",
        "image": "assets/images/actor_2.png",
      },
      {
        "orginalName": "Christian Bale",
        "movieName": "Ken Miles",
        "image": "assets/images/actor_3.png",
      },
      {
        "orginalName": "Caitriona Balfe",
        "movieName": "Mollie",
        "image": "assets/images/actor_4.png",
      },
    ],
  ),

  Topic(
    id: 4,
    title: "Health",
    poster: "assets/images/poster_3.jpg",
    backdrop: "assets/images/backdrop_3.jpg",
    topic: topicText,
    genra: ["Filler 1", "Filler 2", "Filler 3", "Filler 4"],
    desc: [
      {
        "orginalName": "James Mangold",
        "movieName": "Director",
        "image": "assets/images/actor_1.png",
      },
      {
        "orginalName": "Matt Damon",
        "movieName": "Carroll",
        "image": "assets/images/actor_2.png",
      },
      {
        "orginalName": "Christian Bale",
        "movieName": "Ken Miles",
        "image": "assets/images/actor_3.png",
      },
      {
        "orginalName": "Caitriona Balfe",
        "movieName": "Mollie",
        "image": "assets/images/actor_4.png",
      },
    ],
  ),
];

String topicText = 
    "This debate text is absolutely fucking amazing, also, fuck you!";
