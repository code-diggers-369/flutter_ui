import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:task/services/allUrl.dart';

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

class Account extends StatelessWidget {
  const Account({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 40,
      child: InkWell(
        onTap: () {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text("Logout"),
            duration: Duration(seconds: 1),
          ));
        },
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          decoration: BoxDecoration(
              color: Colors.red, borderRadius: BorderRadius.circular(20)),
          width: MediaQuery.of(context).size.width - 30,
          child: Center(
            child: Text(
              "Logout",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}

// second widget
class Dashboard extends StatelessWidget {
  const Dashboard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 40,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Dashboard"),
          SizedBox(
            height: 10,
          ),
          dashboardList(context, Colors.green.shade500,
              FeatherIcons.shoppingBag, "Payments"),
          dashboardList(context, Colors.blue.shade500, FeatherIcons.award,
              "Achievements"),
          dashboardList(
              context, Colors.red.shade500, FeatherIcons.shield, "Privacy"),
        ],
      ),
    );
  }

// dashboard List card
  InkWell dashboardList(
      context, Color cardIconColor, IconData cardIcon, String cardName) {
    return InkWell(
      onTap: () {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text(cardName),
          duration: Duration(seconds: 1),
        ));
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 10),
        padding: EdgeInsets.symmetric(horizontal: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                ClipOval(
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(color: cardIconColor),
                    child: Icon(
                      cardIcon,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  cardName,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Icon(FeatherIcons.chevronRight),
          ],
        ),
      ),
    );
  }
}

// first widget
class TopProfileContainer extends StatelessWidget {
  const TopProfileContainer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 20,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ClipOval(
            child: Image.network(
              MyPic,
              width: 100,
              height: 100,
              // fit: BoxFit.cover,
              fit: BoxFit.fill,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Prajapati Haresh",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Text("Web Developer"),
            ],
          ),
        ],
      ),
    );
  }
}
