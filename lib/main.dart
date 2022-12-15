import 'package:exame/routes/router.dart';
import 'package:exame/routes/routes.dart';
import 'package:exame/screens/home.dart';
import 'package:exame/styles/constants.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        initialRoute: kNoteRoute,
        routes: router,
      theme: ThemeData(
        fontFamily: 'SF Pro', backgroundColor: kMainBackgroundColor
      ),
    );
  }
}
