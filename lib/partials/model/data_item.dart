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
    name: "Notes",
    icon: Icon(
      Icons.description,
    ),
  ),
  MenuItemData(
    name: "Archives",
    icon: Icon(
      Icons.archive,
    ),
  ),
];
