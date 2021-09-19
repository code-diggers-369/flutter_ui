import 'dart:async';
import 'package:flutter/material.dart';
import 'package:task/screens/HomeNavigation.dart';

class SplashScreen extends StatefulWidget {
  static const String id = "SplashScreen";

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  // AnimationController controller;
  // // Animation animation;

  @override
  void initState() {
    super.initState();

    Timer(
      Duration(seconds: 2),
      () async {
        Navigator.of(context).pushReplacementNamed(Home.id);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.lightBlue,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Column(
                children: [
                  Image.asset(
                    'assets/images/logo.png',
                    width: 300,
                    height: 300,
                  ),
                  Center(
                    child: Text(
                      'Sample UI',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25.0,
                        // fontSize: controller.value,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              //
              //

              Container(
                child: Column(
                  children: [
                    Text(
                      'Made With ♥ In India',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15.0,
                        // fontSize: controller.value,
                        color: Colors.white,
                      ),
                    ),
                    // SizedBox(
                    //   height: 15.0,
                    // ),
                    // Text(
                    //   'Haresh Prajapati',
                    //   style: TextStyle(
                    //     fontWeight: FontWeight.bold,
                    //     fontSize: 12.0,
                    //     // fontSize: controller.value,
                    //     color: Colors.white,
                    //   ),
                    // ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
