import 'package:http/http.dart';
import 'dart:convert';

class WorldTime {

  String location;  //Location name for UI
  String time;      //Time for location
  String flag;      //Url to flag icon
  String url;       //Location url for api endpoint



WorldTime ({ this.location, this.flag, this.url });

Future <void> getTime() async {
      //make request
      Response response = await get('http://worldtimeapi.org/api/timezone/$url');
      Map data = jsonDecode(response.body);
      //print (data);

      String datetime = data['datetime'];
      String offset = data['utc_offset'].substring(1,3);
      // print(datetime);
      // print(offset);

      //create datetime object
      DateTime now = DateTime.parse(datetime);
      now = now.add(Duration(hours: int.parse(offset)));
      
      time = now.toString(); //set time property
  }
}
