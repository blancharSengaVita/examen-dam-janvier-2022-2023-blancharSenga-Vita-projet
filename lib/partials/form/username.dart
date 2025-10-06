import 'package:exame/partials/form/text_input.dart';
import 'package:flutter/material.dart';

import '../../styles/constants.dart';

@immutable
class UserNameInput extends StatelessWidget {
  final ValueChanged<String>? onChanged;
  const UserNameInput({this.onChanged,Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: const [
            Text('Votre nom d’utilisateur',
                style: kMainTextStyle,
                textAlign: TextAlign.start),
          ],
        ),
        const SizedBox(height: 6),
        TextInput(
          value: "",
          hintText: 'example',
          keyboardType: TextInputType.text,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Le nom d’utilisateur doit être renseigné.';
            } else if (value.length < 2) {
              return 'Le nom d’utilisateur doit contenir au moins 2 caractères.';
            }
          },
          onChanged: onChanged,
        ),
      ],
    );
  }
}
