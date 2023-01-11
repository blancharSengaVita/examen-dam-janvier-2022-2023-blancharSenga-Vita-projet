import 'package:exame/styles/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FormHeader extends StatelessWidget {
  const FormHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgPicture.asset(
          'assets/pictures/sparkles.svg',
          height: 48,
          width: 48,
          semanticsLabel: '3 étincelles',
        ),
        const SizedBox(
          height: 14,
        ),
        const Text(
          'Sparkles Note',
          style: kBigTitleStyle,
        ),
        const Text(
          'Ne laisser pas vos idées s’échapper.' ,
          style: kMainTextStyle,
        ),
      ],
    );
  }
}
