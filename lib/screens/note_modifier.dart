import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:exame/routes/routes.dart';
import 'package:exame/styles/constants.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../note_item.dart';
import 'home.dart';
import 'note_reader.dart';

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

  @override
  Widget build(BuildContext context) {
    titleController.text =  widget.doc['title'];
    mainController.text =  widget.doc['content'];

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
                ],
              ),
            ),
            TextFormField(
                keyboardType: TextInputType.multiline,
                maxLines: null,
                controller: titleController,
                decoration: const InputDecoration(
                  hintText: "Title",
                  border: InputBorder.none,
                ),
                style: kBigTitleStyle),
            TextFormField(
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
