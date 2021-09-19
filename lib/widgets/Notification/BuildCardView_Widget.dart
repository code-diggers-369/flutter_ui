import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

Widget buildCardView(context, tempData) {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
    decoration: BoxDecoration(
        color: Colors.grey.shade200, borderRadius: BorderRadius.circular(10)),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          child: Row(
            children: [
              ClipOval(
                child: Container(
                  // color: Colors.blueAccent,
                  color: generateRandomColor(),
                  height: 50,
                  width: 50,
                  child: Center(
                      child: Text(
                    tempData.name.toString()[0].toUpperCase(),
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  )),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Text(tempData.name)
            ],
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            tempData.transaction.toString() == "credit"
                ? Text(
                    "+ ₹ " + tempData.money.toString(),
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.green.shade300,
                        fontSize: 15),
                  )
                : Text(
                    "- ₹ " + tempData.money.toString(),
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.red.shade300,
                        fontSize: 15),
                  ),
            Text(
              tempData.time.toString(),
              style: TextStyle(fontSize: 10),
            )
          ],
        )
      ],
    ),
  );
}

// random number generator
Color generateRandomColor() {
  Random random = Random();
  // Pick a random number in the range [0.0, 1.0)
  double randomDouble = random.nextDouble();

  // return Color((randomDouble * 0xFFFFFF).toInt()).withOpacity(1.0);
  return Color.fromARGB(
    255,
    random.nextInt(256),
    random.nextInt(256),
    random.nextInt(256),
  );
}
