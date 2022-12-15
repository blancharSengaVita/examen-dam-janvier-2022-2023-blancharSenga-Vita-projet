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
      floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const NoteEditor(),
              ),
            );
          },
          icon : const Icon(
            Icons.add,
            color: Colors.white,
            size: 50,
          ),
          label: const Text("Add Note"),
        backgroundColor: Colors.black,
        // shape: const CircleBorder(),
      ),
    );
  }
}
