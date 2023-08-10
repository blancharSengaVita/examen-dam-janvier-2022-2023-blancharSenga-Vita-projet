import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:exame/routes/routes.dart';
import 'package:exame/styles/constants.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../partials/form/note_form/text_note_input.dart';
import 'home.dart';

class NoteModifier extends StatefulWidget {
  NoteModifier(this.doc, {Key? key}) : super(key: key);
  QueryDocumentSnapshot doc;

  @override
  State<NoteModifier> createState() => _NoteModifierState();
}

class _NoteModifierState extends State<NoteModifier> {
  final TextEditingController titleController = TextEditingController();
  final TextEditingController mainController = TextEditingController();
  String date = DateTime.now().toString();
  String userID = FirebaseAuth.instance.currentUser!.uid;

  @override
  Widget build(BuildContext context) {
    titleController.text = widget.doc['title'];
    mainController.text = widget.doc['content'];

    return Scaffold(
        body: SingleChildScrollView(
          child: SafeArea(
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
                              FirebaseFirestore.instance
                                  .collection('notes')
                                  .doc(widget.doc.id)
                                  .delete();
                            } else {
                              FirebaseFirestore.instance
                                  .collection('notes')
                                  .doc(widget.doc.id)
                                  .update({
                                'title': titleController.text,
                                'content': mainController.text,
                                'userID' : userID,
                                'date': date,
                              });
                            }

                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const Home(),
                                ));
                          },
                          child: const Icon(Icons.arrow_back_ios, size: 30)),
                      const Spacer(),
                      GestureDetector(
                        onTap: () async {
                          FirebaseFirestore.instance
                              .collection('notes')
                              .doc(widget.doc.id)
                              .delete();

                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Home(),
                              ));
                        },
                        child: const Icon(Icons.delete, size: 30),
                      ),
                    ],
                  ),
                ),
                SingleChildScrollView(
                  child: Column(
                    children: [
                      TextNoteInput(
                        hintText: 'Title',
                        controller: titleController,
                        style: kBigTitleStyle,
                        maxlines: 4,
                      ),
                      TextNoteInput(
                        hintText: 'Note',
                        controller: mainController,
                        style: kMainTextStyle,
                        // maxlines: 20,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
      ),
        ),
    );
  }
}
