import 'package:exame/partials/navbar/nav_bar.dart';
import 'package:flutter/material.dart';

import '../partials/avatar.dart';
import '../partials/buttons/add_note_button.dart';
import '../partials/navbar/menu.dart';
import '../partials/navbar/search_input.dart';
import '../styles/constants.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: kDefaultWidth, bottom: kDefaultWidth),
          child: Column(
            children: const [
              NavBar(),
              // AddNoteButton(),
            ],
          ),

        ));
  }
}
