import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';

class WorldTime {

  String location;  //Location name for UI
  String time;      //Time for location
  String flag;      //Url to flag icon
  String url;       //Location url for api endpoint
  bool isDayTime; //true or false



WorldTime ({ this.location, this.flag, this.url });

Future <void> getTime() async {
  try{
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

      //set time property
      isDayTime = now.hour > 6 && now.hour <20 ? true : false;
  
      time = DateFormat.jm().format(now); 
      
   }
  
   catch (e) {
      print('caught error: $e');
     time = 'Could not fetch time data';
   }
  }
}
