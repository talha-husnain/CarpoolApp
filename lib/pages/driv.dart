import 'package:flutter/material.dart';

class DriverDetailsFinalActivity extends StatefulWidget {
  @override
  _DriverDetailsFinalActivityState createState() =>
      _DriverDetailsFinalActivityState();
}

class _DriverDetailsFinalActivityState
    extends State<DriverDetailsFinalActivity> {
  String carModel = '';
  String licenseType = 'PSV';
  TextEditingController firstNameController = TextEditingController();
  TextEditingController contactNumController = TextEditingController();
  TextEditingController homeAddressController = TextEditingController();
  TextEditingController postcodeController = TextEditingController();

  void _onCarModelSelected(String model) {
    setState(() {
      carModel = model;
    });
  }

  void _onLicenseTypeSelected(String type) {
    setState(() {
      licenseType = type;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Driver Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: firstNameController,
              decoration: InputDecoration(labelText: 'First Name'),
            ),
            TextField(
              controller: contactNumController,
              decoration: InputDecoration(labelText: 'Contact Number'),
            ),
            TextField(
              controller: homeAddressController,
              decoration: InputDecoration(labelText: 'Home Address'),
            ),
            TextField(
              controller: postcodeController,
              decoration: InputDecoration(labelText: 'Postcode'),
            ),
            SizedBox(height: 16.0),
            Text('Car Model:'),
            RadioListTile(
              title: Text('Saloon'),
              value: 'Saloon',
              groupValue: carModel,
              onChanged: _onCarModelSelected,
            ),
            RadioListTile(
              title: Text('Wheelchair Accessible Minibus'),
              value: 'Wheelchair Accessible Minibus',
              groupValue: carModel,
              onChanged: _onCarModelSelected,
            ),
            RadioListTile(
              title: Text('7 Seater MPV'),
              value: '7 Seater MPV',
              groupValue: carModel,
              onChanged: _onCarModelSelected,
            ),
            RadioListTile(
              title: Text('WW/C Taxi'),
              value: 'WW/C Taxi',
              groupValue: carModel,
              onChanged: _onCarModelSelected,
            ),
            RadioListTile(
              title: Text('Company Car'),
              value: 'Company Car',
              groupValue: carModel,
              onChanged: _onCarModelSelected,
            ),
            RadioListTile(
              title: Text('Company Minibus'),
              value: 'Company Minibus',
              groupValue: carModel,
              onChanged: _onCarModelSelected,
            ),
            RadioListTile(
              title: Text('Other'),
              value: 'Other',
              groupValue: carModel,
              onChanged: _onCarModelSelected,
            ),
            SizedBox(height: 16.0),
            Text('License Type:'),
            RadioListTile(
              title: Text('PSV'),
              value: 'PSV',
              groupValue: licenseType,
              onChanged: _onLicenseTypeSelected,
            ),
            RadioListTile(
              title: Text('PCO'),
              value: 'PCO',
              groupValue: licenseType,
              onChanged: _onLicenseTypeSelected,
            ),
            RadioListTile(
              title: Text('WC TAXI'),
              value: 'WC TAXI',
              groupValue: licenseType,
              onChanged: _onLicenseTypeSelected,
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                String firstName = firstNameController.text;
                String contactNum = contactNumController.text;
                String homeAddress = homeAddressController.text;
                String postcode = postcodeController.text;

                if (firstName.isEmpty) {
                  // Show error message or handle validation
                  return;
                }

                if (contactNum.isEmpty) {
                  // Show error message or handle validation
                  return;
                }

                if (homeAddress.isEmpty) {
                  // Show error message or handle validation
                  return;
                }

                if (postcode.isEmpty) {
                  // Show error message or handle validation
                  return;
                }

                // Save the data or perform necessary actions
                print('First Name: $firstName');
                print('Contact Number: $contactNum');
                print('Home Address: $homeAddress');
                print('Postcode: $postcode');
                print('Car Model: $carModel');
                print('License Type: $licenseType');
              },
              child: Text('Done'),
            ),
          ],
        ),
      ),
    );
  }
}
