import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

Widget bigCard(BuildContext context) {
  return Container(
    decoration: BoxDecoration(
        color: Colors.lightBlue, borderRadius: BorderRadius.circular(25)),
    width: MediaQuery.of(context).size.width - 35,
    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 25),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Balance",
          style: customStyle(15, false),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          "₹ 4,50,933",
          style: customStyle(30, true),
        ),
        SizedBox(
          height: 22,
        ),
        Text(
          "Monthly Profit",
          style: customStyle(15, false),
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "₹ 12,484",
              style: customStyle(20, true),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 6, vertical: 3),
              decoration: BoxDecoration(
                  color: Colors.blue.shade300,
                  borderRadius: BorderRadius.circular(20)),
              child: Row(
                children: [
                  Icon(
                    Icons.arrow_drop_up,
                    color: Colors.white,
                    size: 25,
                  ),
                  Text(
                    "+10% ",
                    style: customStyle(13, true),
                  )
                ],
              ),
            )
            // InkWell(
            //   onTap: () {
            //     ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            //       content: Text("More"),
            //     ));
            //   },
            //   child: Text(
            //     "More",
            //     style: customStyle(17, true),
            //   ),
            // )
          ],
        )
      ],
    ),
  );
}

// custome style method for reuse same textstyle
TextStyle customStyle(double size, bool isBold) {
  return TextStyle(
    color: Colors.white,
    fontSize: size,
    fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
  );
}
