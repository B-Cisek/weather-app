import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weather_app/MyHomePage.dart';
import 'package:weather_app/PermissionScreen.dart';

import 'main.dart';

class WeatherScreen extends StatefulWidget {
  @override
  State<WeatherScreen> createState() => _WeatherScreenState();
}

class _WeatherScreenState extends State<WeatherScreen> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Stack(fit: StackFit.expand, children: <Widget>[
        Container(
          decoration: const BoxDecoration(
              color: Color(0xffffffff),
              gradient: LinearGradient(
                  begin: Alignment.centerRight,
                  end: Alignment.centerLeft,
                  colors: [Color(0xff6671e5), Color(0xff4852d9)])),
        ),
        Align(
          alignment: FractionalOffset.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Image(
                image: AssetImage('icons/cloud-sun.png'),
              ),
              Padding(padding: EdgeInsets.only(top: 15.0)),
              Text(Strings.appTitle,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                          fontSize: 40.0,
                          color: Colors.white,
                          fontWeight: FontWeight.w600))),
              Padding(padding: EdgeInsets.only(top: 5.0)),
              Text('Pogoda',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                          fontSize: 16.0,
                          color: Colors.white,
                          fontWeight: FontWeight.w500))),
            ],
          ),
        ),
        Positioned(
            left: 0,
            right: 0,
            bottom: 35,
            child: Container(
              alignment: Alignment.center,
              child: Text("Ładowanie...",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                          fontSize: 16.0,
                          color: Colors.white,
                          fontWeight: FontWeight.w300))),
            ))
      ]),
    );
  }

  bool havePermission() {
    return true;
  }
}
