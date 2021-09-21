import 'package:flutter/material.dart';
import 'package:task/services/allUrl.dart';

Widget welcomeContainer() {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Welcome",
              style: TextStyle(fontSize: 11),
            ),
            Text(
              "Prajapati Haresh",
              style: TextStyle(fontWeight: FontWeight.w900, fontSize: 18),
            ),
          ],
        ),
        ClipOval(
          child: Image.asset(
            'assets/images/my.png',
            height: 50,
            width: 50,
            fit: BoxFit.fill,
          ),
          // child: Image.network(
          //   MyPic,
          //   width: 50,
          //   height: 50,
          //   fit: BoxFit.fill,
          //   loadingBuilder: (context, child, loadingProgress) {
          //     if (loadingProgress == null) return child;

          //     return Center(
          //       child: Container(
          //         height: 50,
          //         width: 50,
          //         color: Colors.grey.shade300,
          //       ),
          //     );
          //   },
          //   errorBuilder: (context, error, stackTrace) =>
          //       Text('Some errors occurred!'),
          // ),
        ),
      ],
    ),
  );
}
