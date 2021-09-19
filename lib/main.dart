import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task/screens/HomeNavigation.dart';
import 'package:task/screens/SplashScreen.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        pageTransitionsTheme: NoTransitionsOnWeb(),
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: GoogleFonts.nunito().fontFamily,
      ),
      home: SplashScreen(),
      initialRoute: SplashScreen.id,
      routes: {
        SplashScreen.id: (context) => SplashScreen(),
        Home.id: (context) => Home()
        // LogIn.id: (context) => LogIn(),
      },
    );
  }
}

//
//
//
class NoTransitionsOnWeb extends PageTransitionsTheme {
  final bool kIsWeb = identical(0, 0.0);
  @override
  Widget buildTransitions<T>(
    route,
    context,
    animation,
    secondaryAnimation,
    child,
  ) {
    if (kIsWeb) {
      return child;
    }
    return super.buildTransitions(
      route,
      context,
      animation,
      secondaryAnimation,
      child,
    );
  }
}
