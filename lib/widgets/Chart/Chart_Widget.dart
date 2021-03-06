// import 'package:flutter/material.dart';
// import 'package:fcharts/fcharts.dart';

// class Chart extends StatefulWidget {
//   // const Chart({ Key? key }) : super(key: key);

//   @override
//   _ChartState createState() => _ChartState();
// }

// class _ChartState extends State<Chart> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Text("hey"),
//     );
//   }
// }

import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:time_chart/time_chart.dart';

// ignore: must_be_immutable
class Chartwidget extends StatelessWidget {
  // Data must be sorted.
  final smallDataList = [
    DateTimeRange(
      start: DateTime(2021, 2, 24, 23, 15),
      end: DateTime(2021, 2, 25, 7, 30),
    ),
    DateTimeRange(
      start: DateTime(2021, 2, 22, 1, 55),
      end: DateTime(2021, 2, 22, 9, 12),
    ),
    DateTimeRange(
      start: DateTime(2021, 2, 20, 0, 25),
      end: DateTime(2021, 2, 20, 7, 34),
    ),
    DateTimeRange(
      start: DateTime(2021, 2, 17, 21, 23),
      end: DateTime(2021, 2, 18, 4, 52),
    ),
    DateTimeRange(
      start: DateTime(2021, 2, 13, 6, 32),
      end: DateTime(2021, 2, 13, 13, 12),
    ),
    DateTimeRange(
      start: DateTime(2021, 2, 1, 9, 32),
      end: DateTime(2021, 2, 1, 15, 22),
    ),
    DateTimeRange(
      start: DateTime(2021, 1, 22, 12, 10),
      end: DateTime(2021, 1, 22, 16, 20),
    ),
  ];

  List<DateTimeRange> getRandomSampleDataList() {
    final List<DateTimeRange> list = [];
    final random = Random();

    for (int i = 0; i < 10000; ++i) {
      final int randomMinutes1 = random.nextInt(59);
      final int randomMinutes2 = random.nextInt(59);
      final start = DateTime(2021, 2, 1 - i, 0, randomMinutes1);
      final end = DateTime(2021, 2, 1 - i, 7, randomMinutes2 + randomMinutes1);

      list.add(DateTimeRange(
        start: start,
        end: end,
      ));
    }
    return list;
  }

  List<DateTimeRange> bigDataList = [];

  @override
  Widget build(BuildContext context) {
    final sizedBox = const SizedBox(height: 16);
    if (bigDataList.isEmpty) bigDataList = getRandomSampleDataList();

    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        children: [
          Text(
            "Chart",
            style: TextStyle(fontSize: 20),
          ),
          sizedBox,
          Container(
            width: MediaQuery.of(context).size.width - 40,
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                Text('Weekly time chart'),
                TimeChart(
                  data: bigDataList,
                  viewMode: ViewMode.weekly,
                ),
              ],
            ),
          ),
          sizedBox,
          Container(
            width: MediaQuery.of(context).size.width - 40,
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                Text('Monthly time chart'),
                TimeChart(
                  data: bigDataList,
                  viewMode: ViewMode.monthly,
                ),
              ],
            ),
          ),
          sizedBox,
          Container(
            width: MediaQuery.of(context).size.width - 40,
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                Text('Weekly amount chart'),
                TimeChart(
                  data: smallDataList,
                  chartType: ChartType.amount,
                  viewMode: ViewMode.weekly,
                  barColor: Colors.lightBlue,
                ),
              ],
            ),
          ),
          sizedBox,
          Container(
            width: MediaQuery.of(context).size.width - 40,
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                Text('Monthly amount chart'),
                TimeChart(
                  data: smallDataList,
                  chartType: ChartType.amount,
                  viewMode: ViewMode.monthly,
                  barColor: Colors.lightBlue,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
