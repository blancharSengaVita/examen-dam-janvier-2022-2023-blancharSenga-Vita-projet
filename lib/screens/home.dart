import 'package:flutter/material.dart';

import '../styles/constants.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: kDefaultWidth, bottom: kDefaultWidth),
          child: Row(
            children: [
              const SizedBox(
                width: kMargin,
              ),
              ClipRRect(
                  borderRadius: BorderRadius.circular(50.0),
                  child: const Image(
                    image: AssetImage('assets/pictures/profile.jpg'),
                    width: kDefaultWidth,
                    height: kDefaultWidth,
                  )),
              const SizedBox(
                width: 11,
              ),
              Expanded(
                child: Container(
                  height: 50,
                  padding: const EdgeInsets.symmetric(
                    horizontal: kMargin / 2,
                  ),
                  child: const TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'rechercher une note',
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 11,
              ),
              const Icon(Icons.more_vert),
              const SizedBox(
                width: kMargin,
              )
            ],
          ),
        ));
  }
}
