import 'package:exame/note_item.dart';
import 'package:flutter/material.dart';

import '../screens/note_editor.dart';
import '../styles/constants.dart';

class NoteCard extends StatelessWidget {
  const NoteCard({required this.note, Key? key})
      : super(key: key);
  final Note note;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const NoteEditor(),
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 23, horizontal: 20),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: Colors.white,
            border: Border.all(
              style: BorderStyle.solid,
              width: 2,
            )),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              note.title,
              style: kCardNoteTitleStyle,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
                note.content,
                style: kCardNoteContentTextStyle
            )
          ],
        ),
      ),
    );
  }
}
