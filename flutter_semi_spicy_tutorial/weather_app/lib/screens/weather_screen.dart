

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timer_builder/timer_builder.dart';
import 'package:weather_app/model/model.dart';

class WeatherScreen extends StatefulWidget {
  WeatherScreen({this.parseWeatherData, this.parseAirPollution});
  final dynamic parseWeatherData;

  final dynamic parseAirPollution;

  @override
  _WeatherScreenState createState() => _WeatherScreenState();
}

class _WeatherScreenState extends State<WeatherScreen> {
  Model model = Model();
  String? cityName;
  int? temp;
  String? des;
  Widget? icon;
  Widget? pollution;
  Widget? quality;
  double? air;
  double? air2;
  var date = DateTime.now();

  @override
  void initState() {
    super.initState();
    // props 느낌 라우팅 될때 넘겨줌 Widget 으로
    updateData(widget.parseWeatherData, widget.parseAirPollution);
  }

  void updateData(dynamic weatherData, dynamic airData) {
    double temp2 = weatherData['main']['temp'].toDouble();
    temp = temp2.toInt();
    cityName = weatherData['name'];
    var condition = weatherData['weather'][0]['id'];
    var grade = airData['list'][0]['main']['aqi'];
    var index = airData['list'][0]['main']['aqi'];
    des = weatherData['weather'][0]['description'];
    icon = model.getWeatherIcon(condition);
    pollution = model.getAirIcon(grade);
    quality = model.airIndex(index);
    air = airData['list'][0]['components']['pm2_5'];
    air2 = airData['list'][0]['components']['pm10'];
  }

  String getSystemTime() {
    var now = new DateTime.now();
    return new DateFormat("h:mm a").format(now);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        //title: Text('Weather app'),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(
            Icons.near_me,
            size: 30.0,
            color: Colors.white,
          ),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.location_searching,
              size: 30.0,
              color: Colors.white,
            ),
            onPressed: () {},
          )
        ],
      ),
      body: Container(
          child: Stack(
        children: [
          Image.asset(
            'images/background.jpg',
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
          ),
          Container(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 150.0,
                          ),
                          Text(
                            '$cityName',
                            style: GoogleFonts.lato(
                                fontSize: 35.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              TimerBuilder.periodic(Duration(minutes: 1),
                                  builder: (context) {
                                print("${getSystemTime()}");
                                return Text(
                                  "${getSystemTime()}",
                                  style: GoogleFonts.lato(
                                      fontSize: 16.0,
                                      //fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                );
                              }),
                              Text(
                                DateFormat('- EEEE,').format(date),
                                textAlign: TextAlign.left,
                                style: GoogleFonts.lato(
                                    fontSize: 16.0,
                                    //fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              Text(
                                DateFormat('d MMM, yyyy').format(date),
                                textAlign: TextAlign.left,
                                style: GoogleFonts.lato(
                                    fontSize: 16.0,
                                    //fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '$temp\u2103',
                            style: GoogleFonts.lato(
                                fontSize: 85.0,
                                fontWeight: FontWeight.w300,
                                color: Colors.white),
                          ),
                          Row(
                            children: [
                              icon!,
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                '$des',
                                style: GoogleFonts.lato(
                                    fontSize: 15.0,
                                    //fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 40.0),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white30)),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text(
                              'AQI(대기질 지수)',
                              style: GoogleFonts.lato(
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            pollution!,
                            SizedBox(
                              height: 5.0,
                            ),
                            quality!,
                            // Text(
                            //   '$air',
                            //   style: GoogleFonts.lato(
                            //       fontSize: 24.0,
                            //       fontWeight: FontWeight.bold,
                            //       color: Colors.white),
                            // ),
                            // Text(
                            //   '㎍/m3',
                            //   style: GoogleFonts.lato(
                            //       fontSize: 14.0,
                            //       fontWeight: FontWeight.bold,
                            //       color: Colors.white),
                            // ),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              '미세먼지',
                              style: GoogleFonts.lato(
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              '$air2',
                              style: GoogleFonts.lato(
                                  fontSize: 24.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            Text(
                              '㎍/m3',
                              style: GoogleFonts.lato(
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              '초미세먼지',
                              style: GoogleFonts.lato(
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              '$air',
                              style: GoogleFonts.lato(
                                  fontSize: 24.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            Text(
                              '㎍/m3',
                              style: GoogleFonts.lato(
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      )),
    );
  }
}
