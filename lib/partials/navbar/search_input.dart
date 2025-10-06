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
        child: TextFormField(
          cursorColor: Colors.black,
          decoration: InputDecoration(
            prefixIcon: const Icon(Icons.search, color : Colors.black),
            hintText: "Rechercher Une note",
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
            enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.black, width: 2),
                borderRadius: BorderRadius.circular(24),
            ),
            focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.black, width: 2),
                borderRadius: BorderRadius.circular(24),
            ),
          ),
        ),
      ),
    );
  }
}
