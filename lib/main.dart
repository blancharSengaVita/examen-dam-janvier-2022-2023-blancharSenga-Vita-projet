import 'package:exame/routes/router.dart';
import 'package:exame/routes/routes.dart';
import 'package:exame/screens/home.dart';
import 'package:exame/styles/constants.dart';
import 'package:flutter/material.dart';

import 'note_item.dart';

void main() {
  runApp(MyApp());
  // datasNotes.add(Note(title: "je vais farie un test", content:"Bonne chance"));
  // print("titre : ${datasNotes[4].title} / content : ${datasNotes[4].content}");
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        initialRoute: kLoginRoute,
        routes: router,
      theme: ThemeData(
        fontFamily: 'SF Pro', backgroundColor: kMainBackgroundColor
      ),
    );
  }
}
