import 'package:flutter/material.dart';
import 'package:medicoach/models/person.dart';
import 'package:medicoach/widgets/input-field.dart';


class AboutYouForm {
  GlobalKey<FormState> _formKey;
  FocusNode focusNode;
  BuildContext context;
  Person person;


  AboutYouForm(
      this._formKey,
      this.focusNode,
      this.context,
      this.person) { }


  Widget build() {
    return Form(
        key: _formKey,
        onChanged: () => print('CHANGED'),
        child: Column(
          children: [
            InputField("First Name",
                    (str) => person.firstName = str)
                .build(),
            InputField("Second Name",
                    (str) => person.secondName = str)
                .build(),
            InputField("First Last Name",
                    (str) => person.firstLastName = str)
                .build(),
            InputField("Second Last Name",
                    (str) => person.secondLastName = str)
                .build(),
            // DropDownInput(goals).build(),
            // GenericInput(),
            RaisedButton(
                child: Text("Submit"),
                onPressed: () {
                  if (_formKey.currentState.validate()) {
                    _formKey.currentState.save();
                    _handlePatientsData();
                    Navigator.pop(context);
                  } else {
                    FocusScope
                        .of(context)
                        .requestFocus(focusNode);
                  }
                })
          ],
        )
    );
  }

  void _handlePatientsData() {
    print("Submitted!");
  }
}