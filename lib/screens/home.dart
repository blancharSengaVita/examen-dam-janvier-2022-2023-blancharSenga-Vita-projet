import 'package:exame/partials/navbar/nav_bar.dart';
import 'package:exame/partials/note_grid.dart';
import 'package:flutter/material.dart';
import '../styles/constants.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.only(top: kMargin * 3, bottom: kMargin),
      child: Column(
        children: [
          const NavBar(),
          const SizedBox(
            height: 25,
          ),
          Row(
            children: const [
              SizedBox(
                width: 20,
              ),
              Text(
                "Toutes les notes",
                style: kTitleStyle,
                textAlign: TextAlign.left,
              ),
            ],
          ),
          const NoteGrid(),
        ],
      ),
    ));
  }
}
