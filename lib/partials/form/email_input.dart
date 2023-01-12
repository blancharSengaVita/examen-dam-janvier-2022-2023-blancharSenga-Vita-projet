import 'package:email_validator/email_validator.dart';
import 'package:exame/partials/form/text_input.dart';
import 'package:exame/styles/constants.dart';
import 'package:flutter/material.dart';

@immutable
class EmailInput extends StatelessWidget {
  final ValueChanged<String>? onChanged;

  const EmailInput({this.onChanged, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: const [
            Text('Votre username',
                style: kMainTextStyle,
                textAlign: TextAlign.start),
          ],
      ),
       const SizedBox(height: 6),
        TextInput(
          value: "",
          labelText: '',
          hintText: 'exemple@mail.com',
          keyboardType: TextInputType.emailAddress,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'L’adresse mail doit être renseignée.';
            } else if (!EmailValidator.validate(value)) {
              return 'L’adresse mail doit être une adresse mail valide.';
            }
          },
          onChanged: onChanged,
        ),
      ],
    );
  }
}