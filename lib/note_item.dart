import 'package:flutter/material.dart';

class Note {
  final String content;
  final String title;

  const Note({required this.title, required this.content});
}

List<Note> datasNotes = [
  Note(
    title: "note 1",
    content: "Voici le contenu de la note 1"
  ),
  Note(
      title: "note 2",
      content: "Voici le contenu de la note 2"
  ),
  Note(
      title: "note 3",
      content: "Voici le contenu de la note 3"
  ),
  Note(
      title: "note 4",
      content: "Voici le contenu de la note 4"
  )
];
