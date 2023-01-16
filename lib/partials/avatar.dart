import 'package:flutter/material.dart';

import '../styles/constants.dart';

class Avatar extends StatelessWidget {
  const Avatar(this.scaffoldKey, {Key? key}) : super(key: key);
  final GlobalKey<ScaffoldState> scaffoldKey;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () => scaffoldKey,
      icon: const Icon(
        Icons.account_circle,
        color: Colors.black,
        size: 38.0,
      ),
    );
  }
}
