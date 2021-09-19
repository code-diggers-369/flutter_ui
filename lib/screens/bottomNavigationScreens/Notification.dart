import 'package:flutter/material.dart';
import 'package:task/widgets/Notification/BuildCardView_Widget.dart';

class Notification extends StatefulWidget {
  // const Notification({ Key? key }) : super(key: key);

  @override
  _NotificationState createState() => _NotificationState();
}

class _NotificationState extends State<Notification> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      child: ListView.builder(
        itemCount: 5,
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(
          parent: AlwaysScrollableScrollPhysics(),
        ),
        scrollDirection: Axis.vertical,
        itemBuilder: (BuildContext context, int index) {
          return buildCardView(context);
        },
      ),
    );
  }
}
