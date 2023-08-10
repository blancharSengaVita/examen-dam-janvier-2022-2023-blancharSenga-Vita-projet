import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class GetUsername extends StatelessWidget {
  const GetUsername({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final String currentUserUID = FirebaseAuth.instance.currentUser!.uid;

    return StreamBuilder<QuerySnapshot>(
      stream: FirebaseFirestore.instance
          .collection('users')
          .where("userID", isEqualTo: currentUserUID)
          .snapshots(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const CircularProgressIndicator();
        }

        if (snapshot.data == null || !snapshot.hasData) {
          return const Text("No user data available");
        }

        var user = Map<String,dynamic>.from(snapshot.data?.docs[0].data() as Map);

        //print(snapshot.data?.docs.map((user) => user['username']));
        return Text(user['username']);
      },
    );
  }
}
