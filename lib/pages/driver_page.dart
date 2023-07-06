import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:frontend_futter/widgets/primary_button.dart';
import 'package:frontend_futter/widgets/input.dart';
import 'package:frontend_futter/widgets/radio_button.dart';

class DriverView extends StatefulWidget {
  const DriverView({Key? key}) : super(key: key);

  @override
  State<DriverView> createState() => _DriverViewState();
}

class _DriverViewState extends State<DriverView> {
  final fullNameController = TextEditingController();
  final contactNumberController = TextEditingController();
  final addressController = TextEditingController();
  final postCodeController = TextEditingController();

  String selectedCarModel = '';
  String selectedLicenseType = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            border: Border.all(
              color: Color(0xFFAE8A49),
              width: 2,
            ),
          ),
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
                  ],
                ),
              ),
              SizedBox(height: 16),
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
                controller: postCodeController,
                labelText: 'Postcode',
              ),
              SizedBox(height: 16),
              CustomButton(
                text: 'Job Title',
                onPressed: () {
                  // Handle form submission
                },
              ),
              SizedBox(height: 14),
              DriverDetailsRadioButtons(
                options: ['Full time', 'Part Time'],
                onChanged: (value) {
                  setState(() {
                    selectedCarModel = value;
                  });
                },
              ),
              SizedBox(height: 16),
              CustomButton(
                text: 'Vehicle Type',
                onPressed: () {
                  // Handle form submission
                },
              ),
              SizedBox(height: 16),
              DriverDetailsRadioButtons(
                options: ['License Type 1', 'License Type 2', 'License Type 3'],
                onChanged: (value) {
                  setState(() {
                    selectedLicenseType = value;
                  });
                },
              ),
              SizedBox(height: 16),
              CustomButton(
                text: 'Licence Type',
                onPressed: () {
                  // Handle form submission
                },
              ),
              SizedBox(height: 16),
              DriverDetailsRadioButtons(
                options: ['License Type 1', 'License Type 2', 'License Type 3'],
                onChanged: (value) {
                  setState(() {
                    selectedLicenseType = value;
                  });
                },
              ),
              SizedBox(height: 16),
              CustomButton(
                text: 'Done',
                onPressed: () async {
                  print('Data added to Firebase' + fullNameController.text);

                  CollectionReference users =
                      FirebaseFirestore.instance.collection('your_collection');
                  await users.add({
                    'Full Name': fullNameController.text,
                    'Contact Number': contactNumberController.text,
                    'Address': addressController.text,
                    'Postcode': postCodeController.text,
                    'Job Type': selectedCarModel,
                    'License Type': selectedLicenseType
                  });
                  print('Data added to Firebase' + fullNameController.text);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
