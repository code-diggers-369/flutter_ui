import 'package:flutter/material.dart';
import 'package:task/services/allUrl.dart';

// first widget
class TopProfileContainer extends StatelessWidget {
  const TopProfileContainer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 20,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ClipOval(
            child: Image.network(
              MyPic,
              width: 100,
              height: 100,
              // fit: BoxFit.cover,
              fit: BoxFit.fill,
            ),
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
}
