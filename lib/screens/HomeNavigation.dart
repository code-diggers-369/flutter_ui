import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

// import bottomNavigationList from util folder
import 'package:task/utils/bottomNavigationList.dart';

class Home extends StatefulWidget {
  // const Home({ Key? key }) : super(key: key);
  static const String id = "Home";
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: bottomNavigationList[_currentIndex],
      ),
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          buildNavBarItem(FeatherIcons.home, 0),
          buildNavBarItem(FeatherIcons.barChart2, 1),
          buildNavBarItem(FeatherIcons.bell, 2),
          buildNavBarItem(FeatherIcons.user, 3),
        ],
      ),
    );
  }

  GestureDetector buildNavBarItem(IconData icon, int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _currentIndex = index;
        });
      },
      child: Container(
        height: 60,
        child: Icon(
          icon,
          color: _currentIndex == index ? Colors.lightBlue : Colors.grey,
        ),
      ),
    );
  }
}
