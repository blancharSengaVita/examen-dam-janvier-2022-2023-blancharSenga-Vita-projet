import 'package:flutter/material.dart';

@immutable
class MenuItemData {
  final String name;
  final Icon icon;

  const MenuItemData({
    required this.name,
    required this.icon,
  });
}

List<MenuItemData> menuItemsData = const [
  MenuItemData(
    name: " Paramètre",
    icon: Icon(
      Icons.settings,
    ),
  ),
  MenuItemData(
    name: "Archive",
    icon: Icon(
      Icons.archive,
    ),
  ),
  MenuItemData(
    name: "Corbeille",
    icon: Icon(
      Icons.delete,
    ),
  ),
];
