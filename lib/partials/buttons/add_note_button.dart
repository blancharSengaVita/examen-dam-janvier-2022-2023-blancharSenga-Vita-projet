import 'package:flutter/material.dart';

import '../../screens/note_editor.dart';

class AddNoteButton extends StatelessWidget {
  const AddNoteButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: const EdgeInsets.only(bottom: 40, left: 20),
      child: MaterialButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const NoteEditor()));
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
    );
  }
}
