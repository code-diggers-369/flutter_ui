import 'package:flutter/material.dart';
import 'package:task/services/allUrl.dart';

class WelcomeContainer extends StatelessWidget {
  const WelcomeContainer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
          ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Image.network(
              MyPic,
              height: 50,
              width: 50,
              cacheHeight: 50,
              cacheWidth: 50,
              loadingBuilder: (BuildContext ctx, Widget child,
                  ImageChunkEvent loadingProgress) {
                if (loadingProgress == null) {
                  return child;
                } else {
                  return Container(
                    color: Colors.grey,
                  );
                }
              },
            ),
          )
        ],
      ),
    );
  }
}
