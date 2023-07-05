import 'package:flutter/material.dart';
import 'package:frontend_futter/pages/driver_page.dart';
import 'package:frontend_futter/pages/passenger_help.dart';
import 'package:frontend_futter/pages/privacy_view.dart';
import 'package:frontend_futter/pages/contact_page.dart';
import 'pages/home.dart';
// import 'pages/page1.dart';
// import 'pages/page2.dart';
// import 'pages/page3.dart';
// import 'pages/page4.dart';
// import 'pages/page5.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: TextTheme(
          headline4: TextStyle(
            fontSize: 40,
            color: Color(0xffA68000),
            fontFamily: 'stylish',
          ),
          headline5: TextStyle(
            fontSize: 25,
            color: Color(0xffA68000),
            fontFamily: 'stylish',
            fontWeight: FontWeight.bold,
          ),
          headline6: TextStyle(
            fontSize: 18,
            color: Colors.white,
          ),
          bodyText1: TextStyle(
            fontSize: 16,
            color: Colors.white,
            fontFamily: 'Arial',
          ),
        ),
        backgroundColor: Colors.black,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/driver_page': (context) => DriverView(),
        '/privcy': (context) => PrivacyPolicyApp(),
        '/help': (context) => HelpView(),
        '/contact': (context) => ContactApp(),

        // '/page3': (context) => Page3(),
        // '/page4': (context) => Page4(),
        // '/page5': (context) => Page5(),
      },
    );
  }
}
