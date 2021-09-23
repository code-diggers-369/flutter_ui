import 'package:flutter/material.dart';
import 'package:task/utils/portfolioDataList.dart';

class MyPortfolio extends StatelessWidget {
  // const myPortfolio({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 20,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "My Portfolio",
            style: customStyle(18, true),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 180,
            // decoration: BoxDecoration(color: Colors.black),
            child: ListView.builder(
              itemCount:
                  portfolioDataList.length > 0 ? portfolioDataList.length : 1,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  width: MediaQuery.of(context).size.width - 150,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Image.network(
                            portfolioDataList[index].imgUrl,
                            height: 50,
                            width: 50,
                          ),
                          SizedBox(
                            width: 13,
                          ),
                          Text(
                            portfolioDataList[index].name,
                            style: customStyle(15, true),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Text("Portfolio"),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              // "₹ 1,45,250",
                              portfolioDataList[index].price,
                              style: customStyle(22, true),
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.arrow_drop_up,
                                  color: Colors.lightBlue,
                                  size: 25,
                                ),
                                Text(
                                  // "+10% ",
                                  portfolioDataList[index].grothPercentage,
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.lightBlue),
                                )
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

// custome style method for reuse same textstyle
TextStyle customStyle(double size, bool isBold) {
  return TextStyle(
    fontSize: size,
    fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
  );
}
