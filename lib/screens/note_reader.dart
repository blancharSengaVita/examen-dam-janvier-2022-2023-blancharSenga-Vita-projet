import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:exame/screens/note_editor.dart';
import 'package:exame/screens/note_modifier.dart';
import 'package:exame/styles/constants.dart';
import 'package:flutter/material.dart';

import 'home.dart';

class NoteReader extends StatefulWidget {
  NoteReader(this.note, {Key? key}) : super(key: key);
  QueryDocumentSnapshot note;

  @override
  State<NoteReader> createState() => _NoteReaderState();
}

class _NoteReaderState extends State<NoteReader> {
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
                        },
                        child: const Icon(Icons.arrow_back_ios, size: 30)),
                    Container()
                  ],
                ),
              ),
              const SizedBox(height: 25),
              Text(
                widget.note['title'],
                style: kBigTitleStyle,
              ),
              const SizedBox(height: 25),
              Text(
                widget.note['content'],
                style: kMainTextStyle,
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => NoteModifier(widget.note),
                  ));
        },
      ),
    );
  }
}
