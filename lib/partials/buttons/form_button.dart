import 'package:exame/styles/constants.dart';
import 'package:flutter/material.dart';

@immutable
class Button extends StatelessWidget {
  final String label;
  final VoidCallback? onPressed;

  const Button({required this.label, this.onPressed, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: kMargin, horizontal: kMargin*3 ),
        decoration: BoxDecoration(
          color: kMainBackgroundColor,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            width: 2,
          ),

        ),
        child: Text(
          label,
          textAlign: TextAlign.center,
          style: kLoginFormButtonStyle,
        ),
      ),
    );
  }
}
