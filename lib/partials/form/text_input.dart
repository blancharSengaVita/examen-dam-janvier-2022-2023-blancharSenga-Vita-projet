import 'package:flutter/material.dart';

import '../../styles/constants.dart';

@immutable
class TextInput extends StatelessWidget {
  const TextInput(
      {
        this.hintText = "",
        this.keyboardType = TextInputType.text,
        required this.validator,
        this.obscureText = false,
        this.autofocus = false,
        this.onChanged,
        this.value,
        Key? key})
      : super(key: key);
  final String hintText;
  final bool obscureText;
  final bool autofocus;
  final TextInputType keyboardType;
  final FormFieldValidator<String> validator;
  final ValueChanged<String>? onChanged;
  final String? value;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: value,
      validator: validator,
      keyboardType: keyboardType,
      onChanged: onChanged,
      obscureText: obscureText,
      autofocus: autofocus,
      cursorColor: kMainTextColor,
      style: kCardNoteContentTextStyle,

      decoration: InputDecoration(
        hintStyle: kPlaceholderTextStyle,
        hintText: hintText,

        contentPadding:
        const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.black, width: 2),
          borderRadius: BorderRadius.circular(8),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.black, width: 2),
          borderRadius: BorderRadius.circular(8),
        ),

      )
    );
  }
}