import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:exame/partials/note_card.dart';
import 'package:flutter/material.dart';

import '../screens/note_reader.dart';
import '../styles/constants.dart';

class NoteList extends StatelessWidget {
  const NoteList({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: StreamBuilder<QuerySnapshot>(
          stream: FirebaseFirestore.instance.collection("notes")
              .orderBy("date", descending: true).snapshots(),
          builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            }
            if (snapshot.hasData) {
              return Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                child: GridView(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 15,
                      crossAxisSpacing: 10,
                    ),
                    padding: const EdgeInsets.symmetric(
                        vertical: kMargin / 1.33, horizontal: kMargin),
                    shrinkWrap: true,
                    children: snapshot.data!.docs
                        .map((note) => noteCard(() {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => NoteReader(note),
                                  ));
                            }, note))
                        .toList()),
              );
            }
            return const Text("Pas de livres...");
          }),
    );
  }
}
