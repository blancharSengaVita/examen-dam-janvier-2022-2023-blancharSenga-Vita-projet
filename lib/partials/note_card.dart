import 'package:flutter/material.dart';

import '../styles/constants.dart';

class NoteCard extends StatefulWidget {
  const NoteCard({Key? key}) : super(key: key);

  @override
  State<NoteCard> createState() => _NoteCardState();
}

class _NoteCardState extends State<NoteCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
      const EdgeInsets.symmetric(vertical: 23, horizontal: 20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: Colors.white,
          border: Border.all(
            style: BorderStyle.solid,
            width: 2,
          )),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            "note_title",
            style: kNoteTitleStyle,
          ),
          SizedBox(
            height: 10,
          ),
          Text("note_content", style: kMainTextStyle)
        ],
      ),
    );
  }
}
