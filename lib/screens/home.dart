import 'package:exame/partials/navbar/nav_bar.dart';
import 'package:flutter/material.dart';

import '../partials/avatar.dart';
import '../partials/buttons/add_note_button.dart';
import '../partials/navbar/menu.dart';
import '../partials/navbar/search_input.dart';
import '../styles/constants.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: kDefaultWidth, horizontal: kDefaultWidth/2),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              NavBar(),
              SizedBox(
                height: 22,
              ),
              Text('Toutes les notes', style: kTitleStyle),
              SizedBox(
                height: 15,
              ),
              StreamBuilder<querySnapshot>(builder:builder)
              // AddNoteButton(),
            ],
          ),
        ));
  }
}
