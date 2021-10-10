import 'package:flutter/material.dart';
import 'package:it_support/screens/bottom_nav_bar_screen.dart';
import 'package:it_support/screens/components/dropdown_button.dart';
import 'package:it_support/screens/components/rounded_input_field.dart';

import 'dart:ui';

import 'package:it_support/screens/components/check_box.dart';
import 'package:it_support/screens/components/load_image.dart';

class IphoneForm extends StatelessWidget {
  const IphoneForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Chi tiết về vấn đề của bạn ",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Body(),
    );
  }
}

class Body extends StatefulWidget {
  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}

// Create a corresponding State class, which holds data related to the form.
class MyCustomFormState extends State<Body> {
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: SingleChildScrollView(
        // physics: ClampingScrollPhysics(),
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: <Widget>[
            DropdownControl(),
            CheckboxWidget(),
          ],
        ),
      ),
    );
  }
}

class DropdownControl extends StatefulWidget {
  const DropdownControl({Key? key}) : super(key: key);

  @override
  _DropdownControlState createState() => _DropdownControlState();
}

class _DropdownControlState extends State<DropdownControl> {
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
    // TODO: implement build
    return DropdownButtonFormField<String>(
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
    );
  }
}

class CheckboxWidget extends StatefulWidget {
  @override
  CheckboxWidgetState createState() => new CheckboxWidgetState();
}

class CheckboxWidgetState extends State {
  Map<String, bool> values = {
    'Apple': false,
    'Banana': false,
    'Cherry': false,
    'Mango': false,
    'Orange': false,
  };

  var tmpArray = [];

  getCheckboxItems() {
    values.forEach((key, value) {
      if (value == true) {
        tmpArray.add(key);
      }
    });

    // Printing all selected items on Terminal screen.
    print(tmpArray);
    // Here you will get all your selected Checkbox items.

    // Clear array after use.
    tmpArray.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Text(
        " Get Selected Checkbox Items ",
        style: TextStyle(fontSize: 18),
      ),
      Expanded(
        child: ListView(
          shrinkWrap: true,
          children: values.keys.map((String key) {
            // ignore: unnecessary_new
            return new CheckboxListTile(
              title: new Text(key),
              value: values[key],
              activeColor: Colors.pink,
              checkColor: Colors.white,
              onChanged: (bool? value) {
                setState(() {
                  values[key] = value!;
                });
              },
            );
          }).toList(),
        ),
      ),
    ]);
  }
}
