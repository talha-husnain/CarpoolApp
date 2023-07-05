import 'package:flutter/material.dart';

class DriverDetailsRadioButtons extends StatefulWidget {
  final List<String> options;
  final Function(String) onChanged;

  const DriverDetailsRadioButtons({
    required this.options,
    required this.onChanged,
  });

  @override
  _DriverDetailsRadioButtonsState createState() =>
      _DriverDetailsRadioButtonsState();
}

class _DriverDetailsRadioButtonsState extends State<DriverDetailsRadioButtons> {
  String? selectedOption;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Wrap(
        alignment: WrapAlignment.start,
        spacing: 16.0, // Gap between adjacent chips.
        runSpacing: 4.0, // Gap between lines.
        children: widget.options.map((String option) {
          return Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              borderRadius:
                  BorderRadius.circular(10.0), // More rounded corners.
            ),
            padding: EdgeInsets.all(5.0), // Reduced padding.
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Radio<String>(
                  value: option,
                  groupValue: selectedOption,
                  onChanged: (value) {
                    setState(() {
                      selectedOption = value;
                      widget.onChanged(selectedOption!);
                    });
                  },
                ),
                Text(option),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}
