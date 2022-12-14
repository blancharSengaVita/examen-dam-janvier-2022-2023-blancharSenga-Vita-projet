import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:exame/styles/constants.dart';
import 'package:flutter/material.dart';

Widget noteCard(Function()? onTap, QueryDocumentSnapshot doc) {
  return InkWell(
    onTap: onTap,
    child: Container(
        padding: const EdgeInsets.all(8.0),
        margin: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
        ),
      child : Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            doc["note_title"],
            style: kNoteTitleStyle,
          ),
          Text(
            doc["note_content"],
            style: kMainTextStyle,
          ),
        ],
      )
    ),
  );
}
