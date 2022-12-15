import 'package:flutter/material.dart';
import '../styles/constants.dart';

class Title extends StatelessWidget {
  const Title({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        SizedBox(
          width: 20,
        ),
        Text(
          "Toutes les notes",
          style: kTitleStyle,
          textAlign: TextAlign.left,
        ),
      ],
    );
  }
}
