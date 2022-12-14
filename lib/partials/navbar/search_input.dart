import 'package:flutter/material.dart';

import '../../styles/constants.dart';

class SearchInput extends StatelessWidget {
  const SearchInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 50,
        padding: const EdgeInsets.symmetric(
          horizontal: kMargin / 2,
        ),
        child: const TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'rechercher une note',
          ),
        ),
      ),
    );
  }
}
