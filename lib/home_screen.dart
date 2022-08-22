import "package:flutter/material.dart";
import "/gender_widget.dart";
import "/height_widget.dart";

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _gender = 0;
  int _height = 150;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("BMI Calculator"),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(12),
            child: Card(
              elevation: 12,
              shape: const RoundedRectangleBorder(),
              child: Column(
                children: [
                  //Widget for gender selection
                  GenderWidget(
                    onChange: (genderVal) {
                      _gender = genderVal;
                    },
                  ),
                  HeightWidget(onChange: (heightVal) {
                    _height = heightVal;
                  })
                ],
              ),
            ),
          ),
        ));
  }
}
