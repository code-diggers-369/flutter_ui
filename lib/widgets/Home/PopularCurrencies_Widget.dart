import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task/utils/portfolioDataList.dart';

class PopularCurrencies extends StatelessWidget {
  // const PopularCurrencies({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Popular Currencies",
                style: customStyle(true, 18),
              ),
              Text(
                "See More",
                style: customStyle(false, 15, Colors.lightBlue),
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Column(
            children: [
              ListView.builder(
                itemCount: portfolioDataList.length,
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(
                  parent: AlwaysScrollableScrollPhysics(),
                ),
                scrollDirection: Axis.vertical,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    width: MediaQuery.of(context).size.width - 100,
                    margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.network(
                              portfolioDataList[index].imgUrl,
                              height: 50,
                              width: 50,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  portfolioDataList[index].fullName,
                                  style: customStyle(true, 15),
                                ),
                                Row(
                                  children: [
                                    Text(portfolioDataList[index].name),
                                    Icon(
                                      Icons.arrow_drop_up,
                                      color: Colors.lightBlue,
                                      size: 25,
                                    ),
                                    Text(
                                      portfolioDataList[index].grothPercentage,
                                      style: TextStyle(
                                        fontSize: 10,
                                      ),
                                    )
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                        Text(
                          portfolioDataList[index].popularPrice,
                          style: customStyle(true, 13),
                        )
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}

TextStyle customStyle(bool isBold, double fontSize,
    [Color fontColor = Colors.black]) {
  return TextStyle(
      fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
      fontSize: fontSize,
      color: fontColor);
}
