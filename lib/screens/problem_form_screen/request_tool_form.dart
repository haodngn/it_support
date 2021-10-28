import 'package:flutter/material.dart';
import 'package:it_support/screens/components/rounded_input_field.dart';

import 'dart:ui';

import 'package:it_support/screens/components/load_image.dart';

import 'package:it_support/screens/customercontrol/findscreen.dart';

class RequestTool extends StatelessWidget {
  const RequestTool({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Phương thức hỗ trợ",
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
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        // physics: ClampingScrollPhysics(),
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: <Widget>[
            const DropdownControl(),
            SizedBox(height: 30),
            TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "ID",
              ),
            ),
            SizedBox(height: 30),
            TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Password",
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: gotoload));
              },
              child: Text('Gửi yêu cầu'),
            ),
            SizedBox(height: 20),
            Divider(color: Colors.black),
            SizedBox(height: 20),
            Text("Lựa chọn khác"),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(
                  splashColor: Colors.grey[50],
                  padding: new EdgeInsets.all(50),
                  alignment: Alignment.center,
                  icon: const Icon(Icons.question_answer, size: 60),
                  color: Colors.blue[600],
                  onPressed: () {
                    print("message");
                  },
                ),
                IconButton(
                  splashColor: Colors.grey[50],
                  padding: new EdgeInsets.all(50),
                  alignment: Alignment.center,
                  icon: const Icon(Icons.video_call, size: 70),
                  color: Colors.blue[600],
                  onPressed: () {
                    print("video call");
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

Widget gotoload(BuildContext context) {
  return findscreen();
}

class DropdownControl extends StatefulWidget {
  const DropdownControl({Key? key}) : super(key: key);

  @override
  _DropdownControlState createState() => _DropdownControlState();
}

class _DropdownControlState extends State<DropdownControl> {
  String dropdownValue = 'TeamViewer';
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
        labelText: "Tool yêu cầu",
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
        'TeamViewer',
        'UltraViewer',
      ].map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}

class CustomContainerTextField extends StatelessWidget {
  final String labelText;
  final BoxDecoration decoration;
  final Widget child;

  const CustomContainerTextField(
      {required this.labelText, required this.decoration, required this.child});
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          height: 200,
        ),
        Positioned(
          bottom: 0,
          child: Container(width: 345, height: 190, decoration: decoration),
        ),
        Positioned(
          left: 8,
          bottom: 185,
          child: Container(color: Colors.white, child: Text(labelText)),
        ),
        child
      ],
    );
  }
}
