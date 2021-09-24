import 'package:flutter/material.dart';
import 'package:task/widgets/Search/Chart_Widget.dart';

class ChartScreen extends StatefulWidget {
  // const ChartScreen({ Key? key }) : super(key: key);

  @override
  _ChartScreenState createState() => _ChartScreenState();
}

class _ChartScreenState extends State<ChartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          // height: 200,
          // width: 500,
          child: Expanded(
            child: Chart(),
          ),
        ),
      ),
    );
  }
}
