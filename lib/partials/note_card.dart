import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../screens/note_editor.dart';
import '../styles/constants.dart';

Widget noteCard(Function()? onTap, QueryDocumentSnapshot note) {
  return InkWell(
    onTap: onTap,
    child: Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: Colors.white,
          border: Border.all(
            style: BorderStyle.solid,
            width: 2,
          )),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(note["title"],
              style: kCardNoteTitleStyle, maxLines: 2, overflow: TextOverflow.ellipsis),
          const SizedBox(
            height: kNormalHeightSpacer/2,
          ),
          Text(note["content"],
              style: kCardNoteContentTextStyle,
              maxLines: 4,
              overflow: TextOverflow.ellipsis)
        ],
      ),
    ),
  );
}
