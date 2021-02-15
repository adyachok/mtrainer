import 'package:flutter/material.dart';

class LearningGoal {
  String name;
  String value;

  LearningGoal(this.name, this.value) {}

  @override
  String toString() {
    // TODO: implement toString
    return "$name $value";
  }
}

class DropDownInput {
  List<LearningGoal> goals;
  var currentSelectedValue;
  final deviceTypes = ["Mac", "Windows", "Mobile"];

  DropDownInput(this.goals) {}

  Widget build() {
    return Container(
        padding: EdgeInsets.all(10.0),
        child: FormField(
            builder: (FormFieldState<String> state) {
          return InputDecorator(
            decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0))),
            child: new DropdownButton<LearningGoal>(
              autofocus: true,
                hint: new Text('Select Goal'),
                value: this.goals[0],
                isExpanded: true,
                isDense: true,
                onChanged: (newValue) {
                  print(newValue);
                },
                items: goals.map((LearningGoal e) {
                  return new DropdownMenuItem<LearningGoal>(
                    child: Text(e.value),
                    value: e,
                  );
                }).toList()),
          );
        }));
  }
}
