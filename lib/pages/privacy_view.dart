import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class PrivacyPolicyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PrivacyPolicy',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PrivacyPolicyPage(),
    );
  }
}

class PrivacyPolicyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
            padding: EdgeInsets.all(20),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
              SizedBox(height: 16),
              Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 129, 129, 129),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image(
                      alignment: Alignment.center,
                      image: AssetImage('assets/images/ppimg.png'),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 33, 32, 32),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Privacy Policy of Grays Esex Ltd',
                      style: TextStyle(
                          fontSize: 24,
                          color: Color.fromARGB(255, 201, 132, 4),
                          fontWeight: FontWeight.bold,
                          fontFamily: 'calibri'),
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Our Privacy Policy describes how Grays Esex collects, uses, and shares personal information obtained from drivers who apply through our website and mobile application. We are committed to protecting the privacy and personal data of individuals who access and use our transportation services. This Privacy Policy explains how we collect, use, disclose, and protect personal data in accordance with the General Data Protection Regulation (GDPR) as it applies in the United Kingdom. By using our transportation services, you consent to the practices described in this Privacy Policy.',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'calibri',
                          color: Color.fromARGB(255, 201, 132, 4)),
                    ),
                    SizedBox(height: 20),
                    Text(
                      '1. Information you provide voluntarily:',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'calibri',
                          color: Color.fromARGB(255, 201, 132, 4)),
                    ),
                    Text(
                      'We may collect personal data you provide when using our transportation services, such as your name, contact information, address, payment details, and any other information necessary for providing the requested services.',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'calibri',
                          color: Color.fromARGB(255, 201, 132, 4)),
                    ),
                    SizedBox(height: 20),
                    Text(
                      '2. Information collected automatically:',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'calibri',
                          color: Color.fromARGB(255, 201, 132, 4)),
                    ),
                    Text(
                      'When you use our transportation services, we may automatically collect certain information, including your IP address, device information, browsing history, and usage patterns. We use cookies and similar technologies to collect this information. You can manage your cookie preferences through your browser settings.',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'calibri',
                          color: Color.fromARGB(255, 201, 132, 4)),
                    ),
                    SizedBox(height: 20),
                    Text(
                      '2. Purpose of Information Collection:',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'calibri',
                          color: Color.fromARGB(255, 201, 132, 4)),
                    ),
                    Text(
                      'We collect this information to facilitate the driver hiring process and evaluate candidates for employment opportunities. By providing this information, you agree that we may use it for these purposes.',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'calibri',
                          color: Color.fromARGB(255, 201, 132, 4)),
                    ),
                    SizedBox(height: 20),
                    Text(
                      '2.1 Service provision:',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'calibri',
                          color: Color.fromARGB(255, 201, 132, 4)),
                    ),
                    Text(
                      'To provide transportation services, process your bookings, facilitate payments, communicate with you, and deliver customer support.',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'calibri',
                          color: Color.fromARGB(255, 201, 132, 4)),
                    ),
                    SizedBox(height: 20),
                    Text(
                      '2.2 Legal obligations:',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'calibri',
                          color: Color.fromARGB(255, 201, 132, 4)),
                    ),
                    Text(
                      'To comply with our legal obligations, such as fulfilling tax requirements and addressing disputes or claims.',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'calibri',
                          color: Color.fromARGB(255, 201, 132, 4)),
                    ),
                    SizedBox(height: 20),
                    Text(
                      '2.3 Marketing and communications:',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'calibri',
                          color: Color.fromARGB(255, 201, 132, 4)),
                    ),
                    Text(
                      'To send you promotional materials, updates, and newsletters about our services if you have provided your consent to receive such communications. You may opt out of receiving marketing communications at any time.',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'calibri',
                          color: Color.fromARGB(255, 201, 132, 4)),
                    ),
                    SizedBox(height: 20),
                    Text(
                      '2.4 Improving our services:',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'calibri',
                          color: Color.fromARGB(255, 201, 132, 4)),
                    ),
                    Text(
                      'To analyze usage patterns, conduct research, and enhance the functionality and user experience of our transportation services.',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'calibri',
                          color: Color.fromARGB(255, 201, 132, 4)),
                    ),
                    SizedBox(height: 20),
                    Text(
                      '3. Sharing and Disclosure of Personal Data:',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'calibri',
                          color: Color.fromARGB(255, 201, 132, 4)),
                    ),
                    Text(
                      'The personal information collected from drivers is solely used by our hiring department to assess and process employment applications. We do not share this information with any third parties unless required by law or with your explicit consent.',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'calibri',
                          color: Color.fromARGB(255, 201, 132, 4)),
                    ),
                    SizedBox(height: 20),
                    Text(
                      '3.1 Service providers:',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'calibri',
                          color: Color.fromARGB(255, 201, 132, 4)),
                    ),
                    Text(
                      'We may share your personal data with trusted third-party service providers who assist us in delivering our transportation services, such as payment processors, IT infrastructure providers, and customer support services.',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'calibri',
                          color: Color.fromARGB(255, 201, 132, 4)),
                    ),
                    SizedBox(height: 20),
                    Text(
                      '3.2 Legal compliance:',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'calibri',
                          color: Color.fromARGB(255, 201, 132, 4)),
                    ),
                    Text(
                      'We may disclose personal data if required by law, governmental request, or as necessary to protect our legal rights, enforce our policies, or respond to claims.',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'calibri',
                          color: Color.fromARGB(255, 201, 132, 4)),
                    ),
                    SizedBox(height: 20),
                    Text(
                      '3.3 Business transfers:',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'calibri',
                          color: Color.fromARGB(255, 201, 132, 4)),
                    ),
                    Text(
                      'In the event of a merger, acquisition, or sale of all or a portion of our assets, personal data may be transferred to the acquiring entity or merged with another entity. We will notify you of any such change in ownership or control of your personal data.',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'calibri',
                          color: Color.fromARGB(255, 201, 132, 4)),
                    ),
                    SizedBox(height: 20),
                    Text(
                      '4. Cookies and Tracking Technologies:',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'calibri',
                          color: Color.fromARGB(255, 201, 132, 4)),
                    ),
                    Text(
                      'Our website and App do not use cookies or tracking technologies to collect user data.',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'calibri',
                          color: Color.fromARGB(255, 201, 132, 4)),
                    ),
                    SizedBox(height: 20),
                    Text(
                      '5. Data Retention and Security',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'calibri',
                          color: Color.fromARGB(255, 201, 132, 4)),
                    ),
                    Text(
                      'We retain your personal data for as long as necessary to fulfill the purposes outlined in this Privacy Policy, unless a longer retention period is required or permitted by law. We implement appropriate technical and organizational measures to protect your personal data against unauthorized access, disclosure, alteration, or destruction.',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'calibri',
                          color: Color.fromARGB(255, 201, 132, 4)),
                    ),
                    SizedBox(height: 20),
                    Text(
                      '6. User Rights:',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'calibri',
                          color: Color.fromARGB(255, 201, 132, 4)),
                    ),
                    Text(
                      'As a user, you have certain rights concerning your personal data under the GDPR, including:',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'calibri',
                          color: Color.fromARGB(255, 201, 132, 4)),
                    ),
                    SizedBox(height: 10),
                    Text(
                      '6.1 Right of access:',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'calibri',
                          color: Color.fromARGB(255, 201, 132, 4)),
                    ),
                    Text(
                      'You can request access to the personal data we hold about you.',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'calibri',
                          color: Color.fromARGB(255, 201, 132, 4)),
                    ),
                    SizedBox(height: 10),
                    Text(
                      '6.2 Right to rectification:',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'calibri',
                          color: Color.fromARGB(255, 201, 132, 4)),
                    ),
                    Text(
                      'You can request correction of inaccurate or incomplete personal data.',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'calibri',
                          color: Color.fromARGB(255, 201, 132, 4)),
                    ),
                    SizedBox(height: 10),
                    Text(
                      '6.3 Right to erasure:',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'calibri',
                          color: Color.fromARGB(255, 201, 132, 4)),
                    ),
                    Text(
                      'You can request deletion of your personal data in certain circumstances.',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'calibri',
                          color: Color.fromARGB(255, 201, 132, 4)),
                    ),
                    SizedBox(height: 10),
                    Text(
                      '6.4 Right to object:',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'calibri',
                          color: Color.fromARGB(255, 201, 132, 4)),
                    ),
                    Text(
                      'You can object to the processing of your personal data for direct marketing purposes.',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'calibri',
                          color: Color.fromARGB(255, 201, 132, 4)),
                    ),
                    SizedBox(height: 10),
                    Text(
                      '6.5 Right to data portability:',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'calibri',
                          color: Color.fromARGB(255, 201, 132, 4)),
                    ),
                    Text(
                      'You can request to receive your personal data in a structured, commonly used, and machine-readable format.',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'calibri',
                          color: Color.fromARGB(255, 201, 132, 4)),
                    ),
                    SizedBox(height: 20),
                    Text(
                      '7. Contact Information:',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'calibri',
                          color: Color.fromARGB(255, 201, 132, 4)),
                    ),
                    Text(
                      'For any questions, concerns, or inquiries regarding this Privacy Policy or your personal information, please contact us using the contact details provided at the end of this Privacy Policy.',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'calibri',
                          color: Color.fromARGB(255, 201, 132, 4)),
                    ),
                    SizedBox(height: 20),
                    Text(
                      '8. Changes to this Privacy Policy',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'calibri',
                          color: Color.fromARGB(255, 201, 132, 4)),
                    ),
                    Text(
                      'We may update this Privacy Policy from time to time to reflect changes in our privacy practices. We will notify you of any material changes by posting the updated Privacy Policy on our website or through other communication channels.',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'calibri',
                          color: Color.fromARGB(255, 201, 132, 4)),
                    ),
                    SizedBox(height: 10),
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
                  ],
                ),
              ),
            ])));
  }
}
