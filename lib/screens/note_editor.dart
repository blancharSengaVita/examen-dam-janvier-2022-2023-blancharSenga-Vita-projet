import 'package:exame/styles/constants.dart';
import 'package:flutter/material.dart';

import 'home.dart';

class NoteEditor extends StatefulWidget {
  const NoteEditor({Key? key}) : super(key: key);

  @override
  State<NoteEditor> createState() => _NoteEditorState();
}

class _NoteEditorState extends State<NoteEditor> {
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _mainController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Container(
            padding: const EdgeInsets.all(kMargin),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(bottom: kMargin),
                  child: Row(
                    children: [
                      GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => const Home(),
                              ),
                            );
                          },
                          child: const Icon(Icons.arrow_back_ios, size: 30)),
                      Container()
                    ],
                  ),
                ),
                TextField(
                    controller: _titleController,
                    decoration: const InputDecoration(
                      hintText: "Title",
                      border: InputBorder.none,
                    ),
                    style: kBigTitleStyle
                ),
                const SizedBox(
                  height: 10,
                ),
                TextField(
                    keyboardType: Text,
                    controller: _mainController,
                    decoration: const InputDecoration(
                      hintText: "Note",
                      border: InputBorder.none,
                    ),
                    style: kMainTextStyle
                ),
              ],
            ),
          ),
        ));
  }
}
