import 'package:exame/routes/router.dart';
import 'package:exame/routes/routes.dart';
import 'package:exame/screens/error.dart';
import 'package:exame/styles/constants.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: Firebase.initializeApp(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return MaterialApp(
              initialRoute: kHomeRoute,
              routes: router,
              theme: ThemeData(
                  fontFamily: 'SF Pro', backgroundColor: kMainBackgroundColor),
            );
          }
          return const ErrorScreen();
        });
  }
}
