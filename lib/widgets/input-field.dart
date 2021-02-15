import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InputField {
  String helperText;
  String labelText;

  InputField(this.labelText, [this.helperText = "Required"]) {}

  Widget build() {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: 10.0,
        vertical: 10.0
      ),
      child: TextFormField(
        onSaved: (str) => print("Person $str saved!"),
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          helperText: this.helperText,
          labelText: this.labelText,
        ),
        autofocus: true,
        autovalidateMode: AutovalidateMode.always,
      ),
    );
  }
}