import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:weather_app/data/my_location.dart';
import 'package:weather_app/data/network.dart';
import 'package:weather_app/screens/weather_screen.dart';

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
    _longitude = myLocation.longitude;
    Network network = Network('https://api.openweathermap.org/data/2.5/weather'
        '?lat=$_latitude&lon=$_longitude&appid=$apikey&units=metric',
        'https://api.openweathermap.org/data/2.5/air_pollution?lat=$_latitude&lon=$_longitude&appid=$apikey');

    var weatherData = await network.getJsonData();

    var airData = await network.getAirData();

    Navigator.push(context, MaterialPageRoute(builder: (context){
      return WeatherScreen(parseWeatherData: weatherData,parseAirPollution: airData,);
    }));
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.amber,
      body: Center(
          child: SpinKitDoubleBounce(
            color: Colors.white,
            size: 80.0,
          ),
      ),
    );
  }
}
