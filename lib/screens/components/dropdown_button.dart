import 'package:flutter/material.dart';
import 'package:it_support/screens/components/text_field_container.dart';

class RoundedDropdownButton extends StatefulWidget {
  const RoundedDropdownButton({Key? key}) : super(key: key);

  @override
  RoundedDropdownButtonState createState() => RoundedDropdownButtonState();
}

class RoundedDropdownButtonState extends State<RoundedDropdownButton> {
  //first item
  String dropdownValue = 'iPhone 6s';
  // To show Selected Item in Text.
  String holder = '';

  void getDropDownItem() {
    setState(() {
      holder = dropdownValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: Column(children: <Widget>[
        DropdownButtonFormField<String>(
          style: const TextStyle(color: Colors.black),
          isExpanded: true,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: "Dòng thiết bị",
          ),
          value: dropdownValue,
          icon: const Icon(Icons.arrow_downward, color: Colors.lightBlue),
          iconSize: 24,
          elevation: 16,
          onChanged: (String? newValue) {
            setState(() {
              dropdownValue = newValue!;
            });
          },
          items: <String>[
            'iPhone 6s',
            'iPhone 6s Plus',
            'iPhone 7',
            'iPhone 7 Plus',
            'iPhone 8',
            'iPhone 8 Plus',
            'iPhone X',
            'iPhone XS MAX',
            'iPhone 11',
            'iPhone 11 Pro',
            'iPhone 11 Pro Max'
          ].map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ),
      ]),
    );
  }
}
