import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:exame/styles/constants.dart';
import 'package:flutter/material.dart';

import '../note_item.dart';
import 'home.dart';

class NoteEditor extends StatefulWidget {
   NoteEditor(this.doc, {Key? key}) : super(key: key);
  QueryDocumentSnapshot doc;

  @override
  State<NoteEditor> createState() => _NoteEditorState();
}

class _NoteEditorState extends State<NoteEditor> {
  final TextEditingController titleController = TextEditingController();
  final TextEditingController mainController = TextEditingController();


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

                        datasNotes.add(Note(title:titleController.text, content: mainController.text));
                        print(datasNotes);
                        //dire qu'il faut enregistrer la note
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
