import 'package:flutter/material.dart';
import 'package:medicoach/models/person.dart';
import 'package:medicoach/widgets/about-you-form.dart';



class AboutYouPage extends StatefulWidget {
  
  @override
  State<StatefulWidget> createState() {
    return AboutYouPageState();
  }  
}

class AboutYouPageState extends State<AboutYouPage> {
  FocusNode focusNode;
  Person person = Person();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
                AboutYouForm(_formKey, focusNode, context, person).build()
              ],
            )
        )
    );
  }

  @override
  void initState() {
    this.focusNode = FocusNode();
    super.initState();
  }
  
}