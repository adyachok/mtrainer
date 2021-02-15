import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InputField {
  String helperText;
  String labelText;
  Function(String) onSaved;

  InputField(
      this.labelText,
      Function(String) onSaved,
      [this.helperText = "Required"]) {}

  Widget build() {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: 10.0,
        vertical: 10.0
      ),
      child: TextFormField(
        onSaved: onSaved,
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