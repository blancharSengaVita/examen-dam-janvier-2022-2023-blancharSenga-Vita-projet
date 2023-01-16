import 'package:flutter/material.dart';

import '../styles/constants.dart';

class Avatar extends StatelessWidget {
  const Avatar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 38,
      child: IconButton(
        onPressed: () => Scaffold.of(context).openDrawer(),
        icon: const Icon(
          Icons.account_circle,
          color: Colors.black,
          size: 38.0,
        ),
      ),
    );
  }
}
