import 'package:flutter/material.dart';
import 'package:it_support/models/message_model.dart';
import 'package:it_support/screens/chat_screen/chat_screen.dart';
import 'package:it_support/screens/components/rounded_input_field.dart';

import 'dart:ui';

import 'package:it_support/screens/components/load_image.dart';
import 'package:it_support/screens/problem_form_screen/request_tool_form.dart';
import 'package:it_support/screens/problem_form_screen/waiting_screen.dart';

class IpadForm extends StatelessWidget {
  const IpadForm({Key? key}) : super(key: key);

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
  @override
  Widget build(BuildContext context) {
    final Message chat = chats[1];
    return SafeArea(
      child: SingleChildScrollView(
        // physics: ClampingScrollPhysics(),
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: <Widget>[
            const DropdownControl(),
            SizedBox(height: 40),
            CustomContainer(
              labelText: 'Vấn đề của bạn',
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(7),
                ),
                border: Border.all(color: Colors.black, width: 1),
              ),
              child: Column(
                children: <Widget>[
                  CheckboxFormField(
                    title: Text("iPad chậm và bàn phím bị lag"),
                    onSaved: (bool? newValue) {},
                    validator: (bool? value) {},
                  ),
                  CheckboxFormField(
                    title: Text(
                        "Giao diện màn hình mắc kẹt trong chế độ phong cảnh hoặc chân dung"),
                    onSaved: (bool? newValue) {},
                    validator: (bool? value) {},
                  ),
                  CheckboxFormField(
                    title: Text(
                        "Vấn đề hiệu suất, treo, và khởi động lại ngẫu nhiên"),
                    onSaved: (bool? newValue) {},
                    validator: (bool? value) {},
                  ),
                  CheckboxFormField(
                    title: Text("Nút chức năng Home không hoạt động"),
                    onSaved: (bool? newValue) {},
                    validator: (bool? value) {},
                  ),
                  CheckboxFormField(
                    title: Text("Ứng dụng máy ảnh bị treo"),
                    onSaved: (bool? newValue) {},
                    validator: (bool? value) {},
                  ),
                  RoundedInputField(
                      hintText: "Những vấn đề khác...", onChanged: (value) {}),
                ],
              ),
            ),
            SizedBox(height: 40),
            CustomContainerImage(
              labelText: 'Thêm ảnh minh họa ',
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(7),
                ),
                border: Border.all(color: Colors.black, width: 1),
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
                child: LoadImage(),
              ),
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: FlatButton(
                    textColor: Colors.white,
                    color: Colors.blue,
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: continueToRequestTool));
                    },
                    child: Row(
                      children: const [
                        Text("Team view"),
                        Text(" "),
                        Icon(Icons.slideshow),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: FlatButton(
                    textColor: Colors.white,
                    color: Colors.blue,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => waitingscreen(),
                        ),
                      );
                      print("chat");
                    },
                    child: Row(
                      children: const [
                        Text("Chat / Call"),
                        Text(" "),
                        Icon(Icons.video_call),
                      ],
                    ),
                  ),
                ),
              ],
            ),
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
  String dropdownValue = 'IPad Pro 11';
  // To show Selected Item in Text.
  String holder = '';

  void getDropDownItem() {
    setState(() {
      holder = dropdownValue;
    });
  }

  @override
  Widget build(BuildContext context) {
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
        'IPad Pro 11',
        'Apple iPad',
        'iPad mini 5',
        'Apple iPad Air',
        'Apple iPad Pro ',
        'Apple iPad Pro 11',
      ].map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}

class CheckboxFormField extends FormField<bool> {
  CheckboxFormField(
      {required Widget title,
      required FormFieldSetter<bool> onSaved,
      required FormFieldValidator<bool> validator,
      bool initialValue = false,
      bool autovalidate = false})
      : super(
            onSaved: onSaved,
            validator: validator,
            initialValue: initialValue,
            builder: (FormFieldState<bool> state) {
              return CheckboxListTile(
                dense: state.hasError,
                title: title,
                value: state.value,
                onChanged: state.didChange,
                controlAffinity: ListTileControlAffinity.leading,
              );
            });
}

class CustomContainer extends StatelessWidget {
  final String labelText;
  final BoxDecoration decoration;
  final Widget child;

  const CustomContainer(
      {required this.labelText, required this.decoration, required this.child});
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          height: 80,
        ),
        Positioned(
          bottom: 0,
          child: Container(width: 345, height: 356, decoration: decoration),
        ),
        Positioned(
          left: 8,
          bottom: 348,
          child: Container(color: Colors.white, child: Text(labelText)),
        ),
        child
      ],
    );
  }
}

class CustomContainerImage extends StatelessWidget {
  final String labelText;
  final BoxDecoration decoration;
  final Widget child;

  const CustomContainerImage(
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

Widget continueToRequestTool(BuildContext context) {
  return RequestTool();
}
