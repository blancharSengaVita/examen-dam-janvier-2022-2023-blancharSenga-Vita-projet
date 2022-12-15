import 'package:flutter/material.dart';

import '../styles/constants.dart';

class NoteCard extends StatelessWidget {
  const NoteCard({required this.title, required this.content, Key? key})
      : super(key: key);
  final String title;
  final String content;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 23, horizontal: 20),
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
          Text(
            title,
            style: kNoteTitleStyle,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
              content,
              style: kMainTextStyle
          )
        ],
      ),
    );
  }
}
