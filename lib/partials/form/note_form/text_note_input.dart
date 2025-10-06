import 'package:flutter/material.dart';

import '../../../styles/constants.dart';

@immutable
class TextNoteInput extends StatelessWidget {
  const TextNoteInput(
      {this.maxlines,
      required this.hintText,
      required this.controller,
      this.keyboardType = TextInputType.multiline,
        required this.style,
      Key? key})
      : super(key: key);

  final dynamic maxlines;
  final String hintText;
  final TextInputType keyboardType;
  final TextEditingController controller;
  final TextStyle style;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboardType,
      cursorColor: kMainTextColor,
      controller: controller,
      maxLines: null,
      style: style,
      decoration: InputDecoration(
        hintText: hintText,
        border: InputBorder.none,
      ),
    );
  }
}
