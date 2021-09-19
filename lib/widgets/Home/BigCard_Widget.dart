import 'package:flutter/material.dart';

// class BigCard extends StatelessWidget {
//   // const BigCard({ Key? key }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {

//   }
// }

class BigCard extends StatefulWidget {
  // const BigCard({ Key? key }) : super(key: key);

  @override
  _BigCardState createState() => _BigCardState();
}

class _BigCardState extends State<BigCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.lightBlue, borderRadius: BorderRadius.circular(25)),
      width: MediaQuery.of(context).size.width - 30,
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Earning",
            style: customStyle(15, false),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "₹ 1,00,000",
            style: customStyle(30, true),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Savings",
            style: customStyle(15, false),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "₹ 20,000",
                style: customStyle(20, true),
              ),
              InkWell(
                onTap: () {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text("More"),
                  ));
                },
                child: Text(
                  "More",
                  style: customStyle(17, true),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

// custome style method for reuse same textstyle
TextStyle customStyle(double size, bool isBold) {
  return TextStyle(
    color: Colors.white,
    fontSize: size,
    fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
  );
}
