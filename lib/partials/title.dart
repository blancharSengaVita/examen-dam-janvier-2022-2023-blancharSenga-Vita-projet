import 'package:flutter/material.dart';
import '../styles/constants.dart';

class TitleTitle extends StatelessWidget {
  const TitleTitle({Key? key}) : super(key: key);

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
