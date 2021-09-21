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
    return RefreshIndicator(
      onRefresh: () async {
        // print("object")
      },
      child: Container(
        // decoration: BoxDecoration(color: Color.fromRGBO(244, 244, 244, 1)),
        margin: EdgeInsets.all(5),
        child: Column(
          children: [
            Center(child: Text("Notification")),
            Expanded(
              child: ListView.builder(
                itemCount: notificationDataList.length > 0
                    ? notificationDataList.length
                    : 1,
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(
                  parent: AlwaysScrollableScrollPhysics(),
                ),
                scrollDirection: Axis.vertical,
                itemBuilder: (BuildContext context, int index) {
                  return buildCardView(context, notificationDataList[index]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
