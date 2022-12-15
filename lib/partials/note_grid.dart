import 'package:exame/partials/note_card.dart';
import 'package:flutter/material.dart';

import '../note_item.dart';
import '../styles/constants.dart';

class NoteGrid extends StatefulWidget {
  const NoteGrid({Key? key}) : super(key: key);

  @override
  State<NoteGrid> createState() => _NoteGridState();
}

class _NoteGridState extends State<NoteGrid> {
  @override
  Widget build(BuildContext context) {
    return  GridView(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 15,
        crossAxisSpacing: 10,
      ),
      padding: const EdgeInsets.symmetric(
          vertical: kMargin / 1.33, horizontal: kMargin),
      shrinkWrap: true,
      children:  [
        NoteCard(note : datasNotes[0]),
        NoteCard(note : datasNotes[1]),
        NoteCard(note : datasNotes[2]),
        NoteCard(note : datasNotes[3]),
      ],
    );
  }
}


