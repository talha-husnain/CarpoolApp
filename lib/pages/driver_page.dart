import 'package:flutter/material.dart';
import 'package:frontend_futter/widgets/primary_button.dart';
import 'package:frontend_futter/widgets/input.dart';
// import 'package:frontend_futter/widgets/driver_details_radio_buttons.dart';
import 'package:frontend_futter/widgets/radio_button.dart';

class DriverView extends StatefulWidget {
  const DriverView({Key? key}) : super(key: key);

  @override
  State<DriverView> createState() => _DriverViewState();
}

class _DriverViewState extends State<DriverView> {
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
              color: Colors.black,
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
                controller: TextEditingController(),
                labelText: 'Full Name',
              ),
              DriverDetailsTextField(
                controller: TextEditingController(),
                labelText: 'Contact Number',
              ),
              DriverDetailsTextField(
                controller: TextEditingController(),
                labelText: 'Address',
              ),
              DriverDetailsTextField(
                controller: TextEditingController(),
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
                onPressed: () {
                  // Handle form submission
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
