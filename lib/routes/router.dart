import 'package:exame/routes/routes.dart';
import 'package:flutter/material.dart';

import '../screens/home.dart';

Map<String, WidgetBuilder> router = {
  kHomeRoute: (context) =>  const Home(),
};