import 'package:exame/partials/navbar/nav_bar.dart';
import 'package:flutter/material.dart';

import '../partials/avatar.dart';
import '../partials/buttons/add_note_button.dart';
import '../partials/navbar/menu.dart';
import '../partials/navbar/search_input.dart';
import '../styles/constants.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.only(top: kMargin * 3, bottom: kMargin),
      child: Column(
        children: [
          const NavBar(),
          const SizedBox(
            height: 25,
          ),
          Row(
            children: const [
              SizedBox(
                width: 20,
              ),
               Text(
                "Toutes les notes",
                style: kTitleStyle,
                textAlign: TextAlign.left,
              ),
            ],
          ),
          GridView.count(
            padding: const EdgeInsets.symmetric(vertical: kMargin/1.33, horizontal: kMargin),
            crossAxisCount: 2,
            mainAxisSpacing: 15,
            crossAxisSpacing: 10,
            shrinkWrap: true,
            // physics: NeverScrollableScrollPhysics(),
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 23, horizontal: 20),
                // margin: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.white,
                    border: Border.all(
                      style: BorderStyle.solid,
                      width: 2,
                    )),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "note_title",
                      style: kNoteTitleStyle,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text("note_content", style: kMainTextStyle)
                  ],
                ),
              ),
              Container(
                padding:
                const EdgeInsets.symmetric(vertical: 23, horizontal: 20),
                // margin: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.white,
                    border: Border.all(
                      style: BorderStyle.solid,
                      width: 2,
                    )),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "note_title",
                      style: kNoteTitleStyle,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text("note_content", style: kMainTextStyle)
                  ],
                ),
              ),
              Container(
                padding:
                const EdgeInsets.symmetric(vertical: 23, horizontal: 20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.white,
                    border: Border.all(
                      style: BorderStyle.solid,
                      width: 2,
                    )),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "note_title",
                      style: kNoteTitleStyle,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text("note_content", style: kMainTextStyle)
                  ],
                ),
              ),
              Container(
                padding:
                const EdgeInsets.symmetric(vertical: 23, horizontal: 20),
                // margin: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.white,
                    border: Border.all(
                      style: BorderStyle.solid,
                      width: 2,
                    )),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "note_title",
                      style: kNoteTitleStyle,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text("note_content", style: kMainTextStyle)
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    ));
  }
}
