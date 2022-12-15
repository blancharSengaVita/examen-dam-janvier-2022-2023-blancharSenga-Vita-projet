import 'package:exame/styles/constants.dart';
import 'package:flutter/material.dart';

class NoteEditor extends StatefulWidget {
  const NoteEditor({Key? key}) : super(key: key);

  @override
  State<NoteEditor> createState() => _NoteEditorState();
}

class _NoteEditorState extends State<NoteEditor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(kMargin),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:  [
              Container(
                margin: const EdgeInsets.only(bottom : kMargin),
                child : Row(
                  children: [
                    const Icon(Icons.arrow_back_ios, size: 30),
                    Container(

                    )
                  ],
                ),
              ),
              const Text(
                "title",
                style: kBigTitleStyle,
              ),

              const SizedBox(
                height: 10,
              ),
              const Text(
                  "content",
                  style: kMainTextStyle
              )
            ],
          ),
        ),
      )
    );
  }
}
