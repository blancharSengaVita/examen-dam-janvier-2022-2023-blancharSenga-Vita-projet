import 'package:exame/partials/buttons/add_note_button.dart';
import 'package:exame/partials/navbar/nav_bar.dart';
import 'package:exame/partials/title.dart';
import 'package:flutter/material.dart';
import '../partials/note_list.dart';
import '../partials/sidebar/sidebar.dart';
import '../styles/constants.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Theme(
          data: Theme.of(context).copyWith(
            canvasColor: Colors.transparent,
          ),
          child: const Drawer(
            child: SidebarScreen(),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: kMargin * 3, bottom: kMargin),
          child: Column(
            children: [
              const NavBar(),
              const SizedBox(
                height: 25,
              ),
              TitleTitle(
                'Toutes les notes'
              ),
              const NoteList(),
            ],
          ),
        ),
        floatingActionButton: const AddNoteButton(),
    );
  }
}
