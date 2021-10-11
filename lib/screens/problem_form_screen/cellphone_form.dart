import 'package:flutter/material.dart';
import 'package:it_support/screens/bottom_nav_bar_screen.dart';
import 'package:it_support/screens/components/dropdown_button.dart';
import 'package:it_support/screens/components/rounded_input_field.dart';

import 'dart:ui';

import 'package:it_support/screens/components/check_box.dart';
import 'package:it_support/screens/components/load_image.dart';
import 'package:it_support/screens/customercontrol/loadscreen.dart';

class CellphoneForm extends StatelessWidget {
  const CellphoneForm({Key? key}) : super(key: key);

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
                    title: Text("Không kết nối Internet"),
                    onSaved: (bool? newValue) {},
                    validator: (bool? value) {},
                  ),
                  CheckboxFormField(
                    title: Text(
                        "Không thể tải xuống được ứng dụng trên Google Play"),
                    onSaved: (bool? newValue) {},
                    validator: (bool? value) {},
                  ),
                  CheckboxFormField(
                    title: Text(
                        "Trình quản lý tải xuống của Android không hoạt động"),
                    onSaved: (bool? newValue) {},
                    validator: (bool? value) {},
                  ),
                  CheckboxFormField(
                    title: Text("Không thể phát video đã tải xuống"),
                    onSaved: (bool? newValue) {},
                    validator: (bool? value) {},
                  ),
                  CheckboxFormField(
                    title: Text("Có phần mềm độc hại trên điện thoại"),
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
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                            MaterialPageRoute(builder: gotoloadscreen));
              },
              child: Text('Gửi yêu cầu'),
            ),
          ],
        ),
      ),
    );
  }
  Widget gotoloadscreen(BuildContext context) {
    return loadscreen();
  }
}

class DropdownControl extends StatefulWidget {
  const DropdownControl({Key? key}) : super(key: key);

  @override
  _DropdownControlState createState() => _DropdownControlState();
}

class _DropdownControlState extends State<DropdownControl> {
  String dropdownValue = 'Samsung';
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
        'Samsung',
        'Oppo',
        'LG',
        'Xiaomi',
        'Vivo',
        'Huawei',
        'Motorola',
        'Realme',
        'TECNO',
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
