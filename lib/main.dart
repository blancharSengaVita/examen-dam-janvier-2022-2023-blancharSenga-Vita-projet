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
            width: kMargin / 2,
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
            height: 50,
            padding: const EdgeInsets.symmetric(
              horizontal: kMargin / 2,
            ),
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(
                Radius.circular(25),
              ),
              border: Border.all(
                width: 2,
                color: Colors.black,
              ),
            ),
            child: Row(
              children: const  [
                Text(
                  "Rechercher une note",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 17.0,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey,
                    decoration: TextDecoration.none,
                  ),
                ),
              ],
            ),
          ))
        ],
      ),
    )));
  }
}
