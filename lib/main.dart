import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart'; // import the Firebase core package
import 'package:frontend_futter/pages/driver_page.dart';
import 'package:frontend_futter/pages/passenger_help.dart';
import 'package:frontend_futter/pages/privacy_view.dart';
import 'package:frontend_futter/pages/splash.dart';
import 'package:frontend_futter/pages/contact_page.dart';
import 'pages/home.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: 'your-api-key',
      authDomain: 'your-auth-domain',
      databaseURL: 'your-database-url',
      projectId: 'your-project-id',
      storageBucket: 'your-storage-bucket',
      messagingSenderId: 'your-messaging-sender-id',
      appId: 'your-app-id',
    ),
  );
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
        '/': (context) => SplashView(),
        '/home': (context) => HomePage(),
        '/driver_page': (context) => DriverView(),
        '/privcy': (context) => PrivacyPolicyApp(),
        '/help': (context) => HelpView(),
        '/contact': (context) => ContactApp(),
      },
    );
  }
}
