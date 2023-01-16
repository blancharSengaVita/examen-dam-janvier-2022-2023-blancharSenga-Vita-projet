import 'package:flutter/material.dart';

import '../styles/constants.dart';

class Avatar extends StatelessWidget {
  const Avatar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
        onTap: () => Scaffold.of(context).openDrawer(),
        child: const Icon(
          Icons.account_circle,
          color: Colors.black,
          size: 38.0,
        ),
      );
  }
}
