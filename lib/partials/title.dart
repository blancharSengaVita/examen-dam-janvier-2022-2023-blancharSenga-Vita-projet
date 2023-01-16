import 'package:flutter/material.dart';
import '../styles/constants.dart';

class TitleTitle extends StatelessWidget {
  TitleTitle(this.value, {Key? key}) : super(key: key);

  final String value;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(
          width: 20,
        ),
        Text(
          value,
          style: kTitleStyle,
          textAlign: TextAlign.left,
        ),
      ],
    );
  }
}
