import 'package:financial/common/constants.dart';
import 'package:financial/view/covid_landing.dart';
// import 'package:financial/view/onboard_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: kBackgroundColor,
        textTheme: Theme.of(context).textTheme.apply(displayColor: kTextColor),
        fontFamily: 'Oxygen',
      ),
      // theme: ThemeData(
      //   canvasColor: Colors.white,
      //   primarySwatch: Colors.blue,
      //   fontFamily: 'Oxygen',
      // ),
      home: CovidLanding(),
      // home: OnboardScreen(),
    );
  }
}
