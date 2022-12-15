import 'package:exame/styles/constants.dart';
import 'package:flutter/material.dart';

import '../note_item.dart';
import 'home.dart';

class NoteEditor extends StatefulWidget {
  const NoteEditor({Key? key}) : super(key: key);

  @override
  State<NoteEditor> createState() => _NoteEditorState();
}

class _NoteEditorState extends State<NoteEditor> {
  final TextEditingController titleController = TextEditingController();
  final TextEditingController mainController = TextEditingController();
  late final Note note = Note(title: titleController.text, content: mainController.text);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
        padding: const EdgeInsets.all(kMargin),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: kMargin),
              child: Row(
                children: [
                  GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const Home(),
                          ),
                        );
                        //dire qu'il faut enregistrer la note ico
                        datasNotes.add(note);
                      },
                      child: const Icon(Icons.arrow_back_ios, size: 30)),
                  Container()
                ],
              ),
            ),
            TextField(
                keyboardType: TextInputType.multiline,
                maxLines: null,
                controller: titleController,
                decoration: const InputDecoration(
                  hintText: "Title",
                  border: InputBorder.none,
                ),
                style: kBigTitleStyle),
            const SizedBox(
              height: 10,
            ),
            TextField(
                keyboardType: TextInputType.multiline,
                maxLines: null,
                controller: mainController,
                decoration: const InputDecoration(
                  hintText: "Note",
                  border: InputBorder.none,
                ),
                style: kMainTextStyle),
          ],
        ),
      ),
    ));
  }
}
