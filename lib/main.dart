import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:medicoach/widgets/dropdown-input.dart';
import 'package:medicoach/widgets/generic-input.dart';
import 'package:medicoach/widgets/input-field.dart';

final List<LearningGoal> goals = [
  LearningGoal("nutrition", "Get morte information about nutrition"),
  LearningGoal("gym", "Learning physical activity"),
  LearningGoal("social", "Find group of friends")
];

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Medicoach',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'MamaCoach'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  FocusNode focusNode;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: SingleChildScrollView(
            child: Padding(
                padding: EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                            child: Padding(
                              padding: EdgeInsets.symmetric(vertical: 10),
                              child: Text(
                                "About You",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  color: Color.fromRGBO(48, 158, 153, 100),
                                  fontSize: 25
                                ),
                              ),
                            )


                        )
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                            child: Padding(
                              padding: EdgeInsets.symmetric(vertical: 15.0),
                              child: Text(
                                "Before you back your first session, we need to get to know you first.",
                                maxLines: 4,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14
                                ),
                              ),
                            )


                        )

                      ],
                    ),
                    Form(
                        key: _formKey,
                        onChanged: () => print('CHANGED'),
                        child: Column(
                          children: [
                            InputField("First Name").build(),
                            InputField("Last Name").build(),
                            DropDownInput(goals).build(),
                            GenericInput(),
                            RaisedButton(
                                child: Text("Submit"),
                                onPressed: () {
                                  if (_formKey.currentState.validate()) {
                                    _formKey.currentState.save();
                                    _handleNewPatient();
                                    Navigator.pop(context);
                                  } else {
                                    FocusScope.of(context).requestFocus(
                                        focusNode);
                                  }
                                })
                          ],
                        )
                    ),
                  ],
                )


            )
        )
    );
  }

  @override
  void initState() {
    this.focusNode = FocusNode();
    super.initState();
  }

  void _handleNewPatient() {
    print("Handle new patient");
  }
}
