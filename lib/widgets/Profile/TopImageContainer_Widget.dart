import 'package:flutter/material.dart';
import 'package:task/services/allUrl.dart';

// first widget

Widget topProfileContainer(BuildContext context) {
  return Container(
    width: MediaQuery.of(context).size.width - 20,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        ClipOval(
          child: Image.asset(
            'assets/images/my.png',
            height: 100,
            width: 100,
            fit: BoxFit.fill,
          ),
          // child: Image.network(
          //   MyPic,
          //   width: 100,
          //   height: 100,
          //   // fit: BoxFit.cover,
          //   fit: BoxFit.fill,
          // ),
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
