import 'package:flutter/material.dart';
import 'package:task/utils/notificationDataList.dart';
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
      child: RefreshIndicator(
          onRefresh: () async {
            print("refresh");
          },
          child: Column(
            children: [
              Center(child: Text("Notification")),
              ListView.builder(
                itemCount: notificationDataList.length,
                // physics: const BouncingScrollPhysics(
                //   parent: AlwaysScrollableScrollPhysics(),
                // ),
                scrollDirection: Axis.vertical,
                itemBuilder: (BuildContext context, int index) {
                  return buildCardView(context, notificationDataList[index]);
                },
              ),
            ],
          )),
    );
  }
}
