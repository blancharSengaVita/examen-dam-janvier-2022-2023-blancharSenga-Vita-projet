import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:exame/styles/constants.dart';
import 'package:flutter/material.dart';

import 'home.dart';

class NoteReader extends StatefulWidget {
  NoteReader(this.doc, {Key? key}) : super(key: key);
  QueryDocumentSnapshot doc;

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
              Text(
                widget.doc['title'],
                style: kTitleStyle ,
              ),
              const SizedBox(height : 20),
              Text(
                widget.doc['content'],
                style: kMainTextStyle ,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
