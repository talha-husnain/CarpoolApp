import 'package:flutter/material.dart';

class ContactApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PrivacyPolicy',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ContactView(),
    );
  }
}

class ContactView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 70,
                    width: 120,
                    child: Image(
                      image: AssetImage('assets/images/logo.png'),
                      fit: BoxFit.contain,
                    ),
                  ),
                ],
              ),
            ),
            Image(
              alignment: Alignment.center,
              image: AssetImage('assets/images/btnimg1.jpeg'),
            ),
            Text(
              'Privacy Policy of Grays Esex Ltd',
              style: TextStyle(
                fontSize: 24,
                color: Color(0xFFAE8A49),
              ),
            ),
            SizedBox(height: 20),

            Text(
              'Privacy Policy of Grays Esex Ltd',
              style: TextStyle(
                fontSize: 24,
                color: Color(0xFFAE8A49),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Privacy Policy of Grays Esex Ltd',
              style: TextStyle(
                fontSize: 24,
                color: Color(0xFFAE8A49),
              ),
            ),

            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                    Color(0xFFAE8A49)), // Set the background color
                foregroundColor: MaterialStateProperty.all<Color>(
                    Colors.black), // Set the text color
                textStyle: MaterialStateProperty.all<TextStyle>(
                  TextStyle(fontSize: 16), // Set the text size
                ),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.phone_callback), // Replace with your desired icon
                  SizedBox(width: 8), // Add spacing between icon and text
                  Text('LindLine: +933114739822'),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                    Color(0xFFAE8A49)), // Set the background color
                foregroundColor: MaterialStateProperty.all<Color>(
                    Colors.black), // Set the text color
                textStyle: MaterialStateProperty.all<TextStyle>(
                  TextStyle(fontSize: 16), // Set the text size
                ),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons
                      .open_in_browser_rounded), // Replace with your desired icon
                  SizedBox(width: 8), // Add spacing between icon and text
                  Text('Website: www.graysessex.com'),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                    Color(0xFFAE8A49)), // Set the background color
                foregroundColor: MaterialStateProperty.all<Color>(
                    Colors.black), // Set the text color
                textStyle: MaterialStateProperty.all<TextStyle>(
                  TextStyle(fontSize: 16), // Set the text size
                ),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons
                      .contact_emergency), // Replace with your desired icon
                  SizedBox(width: 8), // Add spacing between icon and text
                  Text('WhatsApp: +933114739822'),
                ],
              ),
            ),
            SizedBox(width: 12), // Add spacing between icon and text
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                    Color(0xFFAE8A49)), // Set the background color
                foregroundColor: MaterialStateProperty.all<Color>(
                    Colors.black), // Set the text color
                textStyle: MaterialStateProperty.all<TextStyle>(
                  TextStyle(fontSize: 16), // Set the text size
                ),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.email_rounded), // Replace with your desired icon
                  SizedBox(width: 8), // Add spacing between icon and text
                  Text('Email: talhahusnain1061@gmail.com'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
