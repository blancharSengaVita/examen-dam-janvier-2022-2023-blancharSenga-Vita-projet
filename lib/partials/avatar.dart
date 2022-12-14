import 'package:flutter/material.dart';

import '../styles/constants.dart';

class Avatar extends StatelessWidget {
  const Avatar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
        borderRadius: BorderRadius.circular(50.0),
        child: const Image(
          image: AssetImage('assets/pictures/profile.jpg'),
          width: kDefaultWidth,
          height: kDefaultWidth,
        ));
  }
}
