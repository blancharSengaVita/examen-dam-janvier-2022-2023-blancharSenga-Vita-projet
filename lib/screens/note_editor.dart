import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:exame/styles/constants.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../note_item.dart';
import 'home.dart';

class NoteEditor extends StatefulWidget {
   NoteEditor( {Key? key}) : super(key: key);

  @override
  State<NoteEditor> createState() => _NoteEditorState();
}

class _NoteEditorState extends State<NoteEditor> {
  final TextEditingController titleController = TextEditingController();
  final TextEditingController mainController = TextEditingController();
  String date = DateTime.now().toString();

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
                    onTap: () async {
                      FirebaseFirestore.instance.collection('notes').add({
                        'title': titleController.text,
                        'content' : mainController.text,
                        'date' : date,
                      }).then((value){
                        if (kDebugMode) {
                          print(value.id);
                          Navigator.pop(context);
                        }
                      }).catchError((error) => print('Failed to add new Note due to $error'));
                    },
                      child: const Icon(Icons.arrow_back_ios, size: 30)
                  ),
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
