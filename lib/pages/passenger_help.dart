import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:frontend_futter/widgets/primary_button.dart';
import 'package:frontend_futter/widgets/input.dart';
import 'package:frontend_futter/widgets/radio_button.dart';

class HelpView extends StatefulWidget {
  const HelpView({Key? key}) : super(key: key);

  @override
  State<HelpView> createState() => _HelpViewState();
}

class _HelpViewState extends State<HelpView> {
  String selectedJobType = '';

  final fullNameController = TextEditingController();
  final contactNumberController = TextEditingController();
  final addressController = TextEditingController();
  final postcodeController = TextEditingController();

  @override
  void dispose() {
    fullNameController.dispose();
    contactNumberController.dispose();
    addressController.dispose();
    postcodeController.dispose();
    super.dispose();
  }

  Future<DocumentReference> saveDataToFirebase() async {
    final data = {
      'full_name': fullNameController.text,
      'contact_number': contactNumberController.text,
      'address': addressController.text,
      'postcode': postcodeController.text,
      'job_type': selectedJobType,
    };

    return FirebaseFirestore.instance.collection('user_data').add(data);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          // padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black,
              width: 2,
            ),
          ),
          child: Column(
            children: [
              Container(
                child: LayoutBuilder(
                  builder: (BuildContext context, BoxConstraints constraints) {
                    return Container(
                      alignment: Alignment.center,

                      color: Color.fromARGB(255, 0, 0, 0),
                      width: constraints
                          .maxWidth, // Set width to the maximum width available
                      height: 50,
                      child: Text(
                        'Driver Details',
                        style: TextStyle(
                          color: Color(0xFFAE8A49),
                          fontSize: 30,
                          fontWeight: FontWeight.w900,
                          fontFamily: 'stylish',
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 20),
              DriverDetailsTextField(
                controller: fullNameController,
                labelText: 'Full Name',
              ),
              DriverDetailsTextField(
                controller: contactNumberController,
                labelText: 'Contact Number',
              ),
              DriverDetailsTextField(
                controller: addressController,
                labelText: 'Address',
              ),
              DriverDetailsTextField(
                controller: postcodeController,
                labelText: 'Postcode',
              ),
              SizedBox(height: 16),
              DriverDetailsRadioButtons(
                options: ['Full time', 'Part Time'],
                onChanged: (value) {
                  setState(() {
                    selectedJobType = value;
                  });
                },
              ),
              SizedBox(height: 16),
              CustomButton(
                text: 'Done',
                onPressed: () async {
                  DocumentReference docRef = await saveDataToFirebase();

                  // Fetch the document using the DocumentReference
                  DocumentSnapshot docSnap = await docRef.get();

                  // Print the data to the console
                  print(docSnap.data());
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
