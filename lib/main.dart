import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:medicoach/pages/about-you.dart';
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: AboutYouPage()
    );
  }

}
