import 'package:exame/partials/navbar/nav_bar.dart';
import 'package:exame/partials/note_grid.dart';
import 'package:exame/partials/title.dart';
import 'package:flutter/material.dart';
import '../styles/constants.dart';
import 'note_editor.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: kMargin * 3, bottom: kMargin),
        child: Column(
          children: const [
            NavBar(),
            SizedBox(
              height: 25,
            ),
            TitleTitle(),
            NoteGrid(),
          ],
        ),
      ),
      floatingActionButton: Container(
        margin: const EdgeInsets.only(bottom: 40, left: 20),
        child: MaterialButton(
          onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const NoteEditor(),
                ),
              );
            },
          color: Colors.black,
          shape: const CircleBorder(),
          child: const Padding(
            padding: EdgeInsets.all(10),
            child: Icon(
              Icons.add,
              color: Colors.white,
              size: 50,
            ),
          ),
        ),
      )
    );
  }
}
