import 'package:exame/styles/constants.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: Padding(
              padding:
              const EdgeInsets.only(top: kDefaultWidth, bottom: kDefaultWidth),
              child: Row(
                children: [
                  SizedBox(
                    width: kDefaultWidth,
                  ),
                  Container(
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(50.0),
                          child: const Image(
                            image: AssetImage('assets/pictures/profile.jpg'),
                            width: kDefaultWidth,
                            height: kDefaultWidth,
                          ))),
                  SizedBox(
                    width: 11,
                  ),
                ],
              ),
            )));
  }
}
