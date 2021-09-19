import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

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
