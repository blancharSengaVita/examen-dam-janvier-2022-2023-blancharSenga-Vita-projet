import 'package:flutter/material.dart';

import '../styles/constants.dart';
import 'model/data_item.dart';

class MyMenuItem extends StatelessWidget {
  const MyMenuItem({required this.menuItemData, Key? key}) : super(key: key);
  final MenuItemData menuItemData;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(children: [
          Container(
            width: 40,
            alignment: Alignment.bottomRight,
            child: IconButton(
              icon: menuItemData.icon,
              iconSize: 35,
              color: Colors.black,
              onPressed: () {},
            ),
          ),
          const SizedBox(width: kNormalHeightSpacer),
          Text(
            menuItemData.name,
            style: kTitleStyle,
          )
        ]),
      ],
    );
  }
}
