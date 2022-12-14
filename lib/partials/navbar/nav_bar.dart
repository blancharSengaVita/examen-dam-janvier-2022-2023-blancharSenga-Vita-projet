import 'package:exame/partials/navbar/search_input.dart';
import 'package:flutter/material.dart';

import '../../styles/constants.dart';
import '../avatar.dart';
import 'menu.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        SizedBox(
          width: kMargin,
        ),
        Avatar(),
        SizedBox(
          width: 11,
        ),
        SearchInput(),
        SizedBox(
          width: 11,
        ),
        Menu(),
        SizedBox(
          width: kMargin,
        )
      ],
    );
  }
}
