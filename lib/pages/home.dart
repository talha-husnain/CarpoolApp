import 'package:flutter/material.dart';
import 'package:frontend_futter/pages/animated_text.dart';
import 'package:frontend_futter/pages/zoom_in_carousel.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Theme.of(context).backgroundColor,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Column(
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
                    Row(
                      children: [
                        SizedBox(
                          height: 30,
                          width: 30,
                          child: InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, '/privcy');
                            },
                            child: Image(
                              image: AssetImage('assets/images/logo2.png'),
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        SizedBox(
                          height: 30,
                          width: 30,
                          child: InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, '/contact');
                            },
                            child: Image(
                              image: AssetImage('assets/images/logo3.png'),
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Divider(
                color: Color(0xffA68000),
                thickness: 2,
              ), // golden color separating line
              SizedBox(height: 20.0), // Add margin
              Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: ZoomInCarousel(
                      imageList: [
                        'assets/images/s1.jpg',
                        'assets/images/s2.jpg',
                        'assets/images/s4.jpg',
                        'assets/images/s5.jpg',
                        'assets/images/s3.jpg'
                      ],
                    ),
                  ),
                  AnimatedTextBox(),
                ],
              ),
              SizedBox(height: 20.0),
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey[900],
                  border: Border.all(color: Color(0xffA68000), width: 2),
                  borderRadius: BorderRadius.circular(
                      15), // Adjust the radius value as per your preference
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                padding: EdgeInsets.all(10.0), // Increased padding to 30
                margin: EdgeInsets.symmetric(
                    horizontal: 20.0, vertical: 10.0), // Add margin
                child: Column(
                  children: [
                    Text(
                        'You will be put in a queue when you start booking your driving test - you\'ll be told how long you\'ll need to wait once you begin. This is faster than booking by phone because the phone lines are very busy at the moment.',
                        style: TextStyle(
                          fontSize: 18.0,
                          color: Color(0xffA68000),
                          fontFamily: 'Arial',
                          fontWeight: FontWeight.bold,
                        )),
                    // SizedBox(height: 20.0), // Add spacing
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/privcy');
                      },
                      child: Text(
                        'Privacy Policy',
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          color: Color.fromARGB(193, 120, 93, 3),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/driver_page');
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.4,
                      height: MediaQuery.of(context).size.height * 0.2,
                      decoration: BoxDecoration(
                        color: Color(0xFF266603),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image(
                            image: AssetImage('assets/images/btnimg1.jpeg'),
                            fit: BoxFit.scaleDown,
                            height: 100.0,
                            width: 100.0,
                          ),
                          Text('Driver',
                              style: TextStyle(
                                fontSize: 18.0,
                                color: Colors.white,
                                fontFamily: 'Arial',
                                fontWeight: FontWeight.bold,
                              )),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context,
                          '/help'); //You need to define this route in your MaterialApp routes
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.4,
                      height: MediaQuery.of(context).size.height * 0.2,
                      decoration: BoxDecoration(
                        color: Color(0xFF266603),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image(
                            image: AssetImage('assets/images/btnimg2.jpeg'),
                            fit: BoxFit.scaleDown,
                            height: 100.0,
                            width: 100.0,
                          ),
                          Text('Assistant',
                              style: TextStyle(
                                fontSize: 18.0,
                                color: Colors.white,
                                fontFamily: 'Arial',
                                fontWeight: FontWeight.bold,
                              )),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
