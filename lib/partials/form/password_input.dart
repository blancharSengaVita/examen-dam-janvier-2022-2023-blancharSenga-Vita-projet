import 'package:exame/partials/form/text_input.dart';
import 'package:exame/styles/constants.dart';
import 'package:flutter/material.dart';

@immutable
class PasswordInput extends StatelessWidget {
  final ValueChanged<String>? onChanged;

  const PasswordInput({this.onChanged, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: const [
             Text('Votre mot de passe',
                style: kMainTextStyle,
                textAlign: TextAlign.start),
          ],
        ),
        const SizedBox(height: 6),
        TextInput(
          value: "",
          hintText: '',
          keyboardType: TextInputType.visiblePassword,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Le mot de passe doit être renseigné.';
            } else if (value.length < 3) {
              return 'Le mot de passe doit contenir au moins 3 caractères.';
            }
          },
          obscureText: true,
          onChanged: onChanged,
        ),
      ],
    );
  }
}
