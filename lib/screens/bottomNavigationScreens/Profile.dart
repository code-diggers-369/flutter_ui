import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task/widgets/Profile/Account_Widget.dart';
import 'package:task/widgets/Profile/Dashboard_Widget.dart';
import 'package:task/widgets/Profile/TopImageContainer_Widget.dart';

class Profile extends StatefulWidget {
  // const Profile({ Key? key }) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 10,
          ),
          Text(
            "My Profile",
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(
            height: 10,
          ),
          TopProfileContainer(),
          SizedBox(
            height: 40,
          ),
          Dashboard(),
          SizedBox(
            height: 30,
          ),
          Account()
        ],
      ),
    );
  }
}
