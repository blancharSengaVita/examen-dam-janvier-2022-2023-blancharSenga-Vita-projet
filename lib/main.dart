import 'package:exame/routes/router.dart';
import 'package:exame/routes/routes.dart';
import 'package:exame/screens/error.dart';
import 'package:exame/screens/home.dart';
import 'package:exame/styles/constants.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'note_item.dart';

void main() {
  runApp(MyApp());
  // datasNotes.add(Note(title: "je vais farie un test", content:"Bonne chance"));
  // print("titre : ${datasNotes[4].title} / content : ${datasNotes[4].content}");
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Firebase.initializeApp(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return MaterialApp(
            initialRoute: FirebaseAuth.instance.currentUser == null
                ? kLoginRoute
                : kHomeRoute,
            routes: router,
            theme: ThemeData(
                fontFamily: 'SF Pro', backgroundColor: kMainBackgroundColor),
          );
        }
        return const ErrorScreen();
      },
    );
  }
}