import 'package:flutter/material.dart';

Widget account(BuildContext context) {
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
            color: Colors.lightBlue, borderRadius: BorderRadius.circular(20)),
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
