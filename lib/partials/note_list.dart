import 'dart:convert';
import 'dart:developer';
import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:exame/partials/note_card.dart';
import 'package:exame/screens/note_modifier.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../styles/constants.dart';

class NoteList extends StatelessWidget {
  const NoteList({Key? key}) : super(key: key);
  final int id = 0;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: StreamBuilder<QuerySnapshot>(
          stream: FirebaseFirestore.instance
              .collection("notes")
              .where("userID",
                  isEqualTo: FirebaseAuth.instance.currentUser!.uid)
              .orderBy("date", descending: false)
              .snapshots(),
          builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
            // if (snapshot.hasError) {
            //   inspect(snapshot.error.toString());
            // }

            if (snapshot.data == null || snapshot.data!.docs.isEmpty) {
              return Column(
                children: const [
                  SizedBox(
                    height: kSmallHeightSpacer,
                  ),
                  Text("Pas de Notes..."),
                ],
              );
            }

            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            }

            if (snapshot.hasData) {
              // print();
              // print(snapshot.data!.docs.map((note) => note['date']));
              // print(snapshot.data!.docs.map((note) => note));
              // print(snapshot.data!.docs['userID']);

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
                                    builder: (context) => NoteModifier(note),
                                  ));
                            }, note))
                        .toList()),
              );
            }
            return const Text("Pas de Notes...");
          }),
    );
  }
}
