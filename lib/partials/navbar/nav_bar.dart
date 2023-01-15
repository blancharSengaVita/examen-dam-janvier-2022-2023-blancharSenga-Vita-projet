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
        Icon(
          Icons.account_circle,
          color: Colors.black,
          size: 38.0,
        ),
        SizedBox(
          width: 11,
        ),
        SearchInput(),
        Menu(),
        SizedBox(
          width: kMargin,
        )
      ],
    );
  }
}
