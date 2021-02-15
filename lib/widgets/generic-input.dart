import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GenericInput extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return GenericInputState();
  }
}

class GenericInputState extends State<GenericInput> {
  bool _flag = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(10.0),
        child: FormField(builder: (FormFieldState<String> state) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Default program"),
              Checkbox(
                  value: _flag,
                  onChanged: (val) {
                    setState(() {
                      _flag = val;
                    });
                  })
            ],
          );
        }));
  }
}
