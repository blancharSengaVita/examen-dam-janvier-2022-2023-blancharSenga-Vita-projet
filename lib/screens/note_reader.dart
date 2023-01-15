import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:exame/styles/constants.dart';
import 'package:flutter/material.dart';

class NoteReader extends StatefulWidget {
  NoteReader(this.doc {Key? key}) : super(key: key);

  QueryDocumentSnapshot doc;

  @override
  State<NoteReader> createState() => _NoteReaderState();
}

class _NoteReaderState extends State<NoteReader> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.doc['content'],
            style: kMainTextStyle ,
          ),
          const SizedBox(height : 20),
          Text(
            widget.doc['content'],
            style: kMainTextStyle ,
          ),
        ],
      ),
    );
  }
}
