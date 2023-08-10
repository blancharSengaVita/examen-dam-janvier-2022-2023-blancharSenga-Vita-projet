import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:exame/styles/constants.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../partials/form/note_form/text_note_input.dart';
import 'home.dart';

class NoteEditor extends StatefulWidget {
  const NoteEditor({Key? key}) : super(key: key);

  @override
  State<NoteEditor> createState() => _NoteEditorState();
}

class _NoteEditorState extends State<NoteEditor> {
  final TextEditingController titleController = TextEditingController();
  final TextEditingController mainController = TextEditingController();
  String date = DateTime.now().toString();
  final ScrollController _scrollController = ScrollController();
  String userID = FirebaseAuth.instance.currentUser!.uid;


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
                            if (titleController.text == '' &&
                                mainController.text == '') {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const Home(),
                                  ));
                            } else {
                              FirebaseFirestore.instance.collection('notes')
                                  .add({
                              'userID' : userID,
                              'title': titleController.text,
                              'content': mainController.text,
                              'date': date,
                              })
                                  .then((value) {
                                if (kDebugMode) {
                                  print(FirebaseAuth.instance.currentUser!.uid);
                                  Navigator.pop(context);
                                }
                              }).catchError((error) =>
                                  print(
                                      'Failed to add new Note due to $error'));
                            }
                          },
                          child: const Icon(Icons.arrow_back_ios, size: 30)),
                    ],
                  ),
                ),
                TextNoteInput(
                  hintText: 'Title',
                  controller: titleController,
                  style: kBigTitleStyle,
                  maxlines: 4,
                ),
                const SizedBox(
                  height: 10,
                ),
                SingleChildScrollView(
                    child: TextNoteInput(
                      maxlines: 9999,
                      hintText: 'note',
                      controller: mainController,
                      style: kMainTextStyle,
                    ),
                  ),
              ],
            ),
          ),
        ));
  }
}
