import 'package:exame/routes/routes.dart';
import 'package:flutter/material.dart';

import '../screens/home.dart';
import '../screens/login_form.dart';
import '../screens/note_editor.dart';

Map<String, WidgetBuilder> router = {
  kHomeRoute: (context) =>  const Home(),
  kNoteRoute: (context) =>  const NoteEditor(),
  kLoginRoute: (context) => const LoginForm(),
};