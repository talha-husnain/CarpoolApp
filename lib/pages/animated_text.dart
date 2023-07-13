import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AnimatedTextBox extends StatefulWidget {
  @override
  _AnimatedTextBoxState createState() => _AnimatedTextBoxState();
}

class _AnimatedTextBoxState extends State<AnimatedTextBox>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: Duration(seconds: 2),
      vsync: this,
    );
    _scaleAnimation = Tween<double>(begin: 0.8, end: 1.0).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.easeInOut),
    );
    _animationController.forward(); // only animate once
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 30.0,
      left: 10.0,
      child: ScaleTransition(
        scale: _scaleAnimation,
        child: Container(
          width: MediaQuery.of(context).size.width * 0.9,
          padding: EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 164, 163, 163)
                .withOpacity(0.6), // Background color
            border: Border.all(
              width: 3.0,
              color: Color.fromARGB(255, 244, 220, 61),
            ),
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Welcome',
                style: GoogleFonts.libreBaskerville(
                  textStyle: TextStyle(
                      color: Color.fromARGB(204, 219, 173, 23),
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold,
                      letterSpacing: .5),
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                'To the world of Grays Essex !',
                style: GoogleFonts.libreBaskerville(
                  textStyle: TextStyle(
                      color: Color.fromARGB(204, 219, 173, 23),
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      letterSpacing: .5),
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                'Calling all skilled drivers and caregivers! Step into the driver\'s seat of your dreams or embark on a rewarding caregiving journey with our app. Experience the joy of flexibility, incredible incentives, and a supportive community that celebrates your skills and compassion. Start your empowering journey today!',
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.white,
                  fontFamily: 'Arial',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }
}
