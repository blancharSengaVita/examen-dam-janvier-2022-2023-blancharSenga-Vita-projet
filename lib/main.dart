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
      padding: const EdgeInsets.only(top: kDefaultWidth, bottom: kDefaultWidth),
      child: Row(
        children: [
          const SizedBox(
            width: kDefaultWidth,
          ),
          ClipRRect(
              borderRadius: BorderRadius.circular(50.0),
              child: const Image(
                image: AssetImage('assets/pictures/profile.jpg'),
                width: kDefaultWidth,
                height: kDefaultWidth,
              )),
          const SizedBox(
            width: 11,
          ),
          Expanded(
              child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: kMargin / 2,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                    border: Border.all(
                      width: 2,
                    ),
                  )))
        ],
      ),
    )));
  }
}
