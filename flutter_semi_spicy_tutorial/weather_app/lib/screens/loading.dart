import 'package:flutter/material.dart';
import 'package:weather_app/data/my_location.dart';
import 'package:weather_app/data/network.dart';

const apikey = "e61da00df735c3163713e1213d581b52";

class Loading extends StatefulWidget {
  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  double? _latitude;
  double? _longitude;

  @override
  void initState() {
    super.initState();
    getLocation();
  }

  void getLocation() async {
    MyLocation myLocation = MyLocation();
    await myLocation.getMyCurrentLocation();
    _latitude = myLocation.latitude;
    _longitude = -myLocation.longitude;
    print(apikey);
    Network network = Network(
        "https://api.openweathermap.org/data/2.5/weather?lat=$_latitude&lon=$_longitude&appid=$apikey");

    var weatherData = await network.getJsonData();
    print(weatherData);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: ElevatedButton(
        onPressed: () => {null},
        child: Text("Get my location"),
      )),
    );
  }
}
