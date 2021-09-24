import 'package:flutter/material.dart';
import 'package:task/widgets/Chart/Chart_Widget.dart';

class Chart extends StatefulWidget {
  // const Chart({ Key? key }) : super(key: key);

  @override
  _ChartState createState() => _ChartState();
}

class _ChartState extends State<Chart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(child: Chartwidget()),
      ),
    );
  }
}
