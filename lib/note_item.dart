import 'package:exame/routes/routes.dart';
import 'package:exame/screens/note_editor.dart';
import 'package:flutter/material.dart';


class Note {
  final String content;
  final String title;

   Note({required this.title, required this.content});
}

List<Note> datasNotes = [
  Note(
    title: "note 1",
    content: "Voici le contenu de la note 1"
  ),
  Note(
      title: "note 2",
      content: "Voici le contenu de la note 2"
  ),
  Note(
      title: "note 3",
      content: "Voici le contenu de la note 3"
  ),
  Note(
      title: "note 4",
      content: "Voici le contenu de la note 4"
  )
];

// class AddNote extends StatefulWidget {
//   const AddNote({Key? key}) : super(key: key);
//
//   @override
//   State<AddNote> createState() => _AddNoteState();
// }
//
// class _AddNoteState extends State<AddNote> {
//   @override
//
//   List<Note> newNote = [];
//
//   Widget build(BuildContext context) {
//     return FloatingActionButton(
//         child: const Icon(Icons.add),
//         onPressed: () {
//           Navigator.pushNamed(context, kNoteRoute).then((value) {
//             if (value != null && value is Note) {
//               datasNotes.add(value);
//               setState(() {
//                 // if this doesn't work add the value to the list then call setState
//               });
//             }
//           });
//         });
//   }
// }
