import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.grey[800], // Dark gray color
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image(
                    alignment: Alignment.center,
                    image: AssetImage('assets/images/btnimg1.jpeg'),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.grey[800], // Dark gray color
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Let us have Conversation',
                    style: GoogleFonts.vollkorn(
                      textStyle: TextStyle(
                          color: Color.fromARGB(204, 219, 173, 23),
                          fontSize: 17.0,
                          fontWeight: FontWeight.bold,
                          letterSpacing: .5),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Contact Grays Esex Ltd',
                    style: GoogleFonts.vollkorn(
                      textStyle: TextStyle(
                          color: Color.fromARGB(204, 219, 173, 23),
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          letterSpacing: .5),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Privacy Policy of Grays Esex Ltd is so well organised and fully furnished',
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xFFAE8A49),
                    ),
                  ),
                  SizedBox(height: 20),
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
                            .phone_callback), // Replace with your desired icon
                        SizedBox(width: 8), // Add spacing between icon and text
                        Text('LindLine: +933114739822'),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
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
                            .phone_callback), // Replace with your desired icon
                        SizedBox(width: 8), // Add spacing between icon and text
                        Text('LindLine: +933114739822'),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
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
                            .phone_callback), // Replace with your desired icon
                        SizedBox(width: 8), // Add spacing between icon and text
                        Text('LindLine: +933114739822'),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
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
                            .phone_callback), // Replace with your desired icon
                        SizedBox(width: 8), // Add spacing between icon and text
                        Text('LindLine: +933114739822'),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
