import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

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
              height: 70,
              width: 120,
              child: Image(
                image: AssetImage('assets/images/logo.png'),
                fit: BoxFit.contain,
              ),
            ),
            Divider(
              color: Color(0xffA68000),
              thickness: 2,
            ),
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.grey[200], // Dark gray color
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
                color: Colors.grey[950], // Dark gray color
                borderRadius: BorderRadius.circular(15),
              ),
              child: Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 33, 32, 32),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Let us have Conversation',
                      style: GoogleFonts.vollkorn(
                        textStyle: TextStyle(
                            color: Color.fromARGB(255, 242, 166, 14),
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
                        color: Color.fromARGB(255, 242, 166, 14),
                      ),
                    ),
                    SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                        // Open phone dialer
                        // Replace 'phone_number' with the actual phone number
                        launch('tel://phone_number');
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                          Color.fromARGB(204, 219, 173,
                              23), // Set the background color to green
                        ),
                        side: MaterialStateProperty.all<BorderSide>(
                          BorderSide(
                              color: Color.fromARGB(87, 27, 168, 8),
                              width:
                                  1.0), // Add a green border with small thickness
                        ),
                        foregroundColor: MaterialStateProperty.all<Color>(
                          Colors.black, // Set the text color
                        ),
                        textStyle: MaterialStateProperty.all<TextStyle>(
                          TextStyle(fontSize: 13), // Set the text size
                        ),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(Icons
                              .phone_callback), // Replace with your desired icon
                          SizedBox(
                              width: 8), // Add spacing between icon and text
                          Text('WhatsApp: +44 749333073'),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                        // Open WhatsApp chat
                        // Replace 'phone_number' with the actual phone number
                        launch('https://wa.me/01628 622955');
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                          Color.fromARGB(204, 219, 173,
                              23), // Set the background color to green
                        ),
                        side: MaterialStateProperty.all<BorderSide>(
                          BorderSide(
                              color: Color.fromARGB(87, 27, 168, 8),
                              width:
                                  1.0), // Add a green border with small thickness
                        ),
                        foregroundColor: MaterialStateProperty.all<Color>(
                          Colors.black, // Set the text color
                        ),
                        textStyle: MaterialStateProperty.all<TextStyle>(
                          TextStyle(fontSize: 13), // Set the text size
                        ),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(Icons
                              .phone_callback), // Replace with your desired icon
                          SizedBox(
                              width: 8), // Add spacing between icon and text
                          Text('LindLine: 01628 622955'),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                        // Open email
                        // Replace 'email_address' with the actual email address
                        launch('mailto:info@graysessex.co.uk');
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                          Color.fromARGB(204, 219, 173,
                              23), // Set the background color to green
                        ),
                        side: MaterialStateProperty.all<BorderSide>(
                          BorderSide(
                              color: Color.fromARGB(87, 27, 168, 8),
                              width:
                                  1.0), // Add a green border with small thickness
                        ),
                        foregroundColor: MaterialStateProperty.all<Color>(
                          Colors.black, // Set the text color
                        ),
                        textStyle: MaterialStateProperty.all<TextStyle>(
                          TextStyle(fontSize: 13), // Set the text size
                        ),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(Icons
                              .email_outlined), // Replace with your desired icon
                          SizedBox(
                              width: 8), // Add spacing between icon and text
                          Text('Email: info@graysessex.co.uk'),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                        launch('https://https://graysessex.co.uk');
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                          Color.fromARGB(204, 219, 173,
                              23), // Set the background color to green
                        ),
                        side: MaterialStateProperty.all<BorderSide>(
                          BorderSide(
                              color: Color.fromARGB(87, 27, 168, 8),
                              width:
                                  1.0), // Add a green border with small thickness
                        ),
                        foregroundColor: MaterialStateProperty.all<Color>(
                          Colors.black, // Set the text color
                        ),
                        textStyle: MaterialStateProperty.all<TextStyle>(
                          TextStyle(fontSize: 13), // Set the text size
                        ),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(Icons
                              .web_asset), // Replace with your desired icon
                          SizedBox(
                              width: 8), // Add spacing between icon and text
                          Text('Website: https://graysessex.co.uk/'),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
