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
      decoration: BoxDecoration(color: Color.fromRGBO(244, 244, 244, 1)),
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
          topProfileContainer(context),
          SizedBox(
            height: 40,
          ),
          dashboard(context),
          SizedBox(
            height: 30,
          ),
          account(context)
        ],
      ),
    );
  }
}
