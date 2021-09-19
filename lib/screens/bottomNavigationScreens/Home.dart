import 'package:flutter/material.dart';
import 'package:task/widgets/Home/BigCard_Widget.dart';
import 'package:task/widgets/Home/TopWelcomeContainer_Widget.dart';

class Home extends StatefulWidget {
  // const Home({ Key? key }) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          WelcomeContainer(),
          SizedBox(
            height: 10,
          ),
          BigCard(),
          SizedBox(
            height: 10,
          )
        ],
      ),
    );
  }
}
