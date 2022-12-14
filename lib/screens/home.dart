import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:exame/card/note_card.dart';
import 'package:exame/partials/navbar/nav_bar.dart';
import 'package:flutter/material.dart';
import '../styles/constants.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.symmetric(
          vertical: kDefaultWidth, horizontal: kDefaultWidth / 2),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const NavBar(),
          const SizedBox(
            height: 22,
          ),
          const Text('Toutes les notes', style: kTitleStyle),
          const SizedBox(
            height: 15,
          ),
          Expanded(
            child: StreamBuilder<QuerySnapshot>(
                stream:
                    FirebaseFirestore.instance.collection("notes").snapshots(),
                builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                  if (snapshot.hasData) {
                    return GridView(gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                    children: snapshot.data!.docs.map((note) => noteCard(() {}, note)).toList(),
                    );
                  }
                  return const Text("there is no notes");
                }),
          )
          // AddNoteButton(),
        ],
      ),
    ));
  }
}
