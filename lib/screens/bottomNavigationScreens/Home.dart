import 'package:flutter/material.dart';
import 'package:task/widgets/Home/BigCard_Widget.dart';
import 'package:task/widgets/Home/MyPortfolio_Widget.dart';
import 'package:task/widgets/Home/PopularCurrencies_Widget.dart';
import 'package:task/widgets/Home/TopWelcomeContainer_Widget.dart';

class Home extends StatefulWidget {
  // const Home({ Key? key }) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(color: Color.fromRGBO(244, 244, 244, 1)),
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              welcomeContainer(),
              SizedBox(
                height: 10,
              ),
              bigCard(context),
              SizedBox(
                height: 15,
              ),
              MyPortfolio(),
              PopularCurrencies()
            ],
          ),
        ),
      ),
    );
  }
}
