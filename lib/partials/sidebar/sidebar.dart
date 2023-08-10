import 'package:exame/partials/MenuItemData.dart';
import 'package:exame/styles/constants.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../../routes/routes.dart';
import '../model/data_item.dart';
import '../username.dart';


class SidebarScreen extends StatefulWidget {
  const SidebarScreen({Key? key}) : super(key: key);

  @override
  State<SidebarScreen> createState() => _SidebarScreenState();
}

class _SidebarScreenState extends State<SidebarScreen> {
  Future<void> _signOut() async {
    await FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      width: MediaQuery.of(context).size.width * 0.7,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: kMargin, horizontal: kMargin/2),
        child: SafeArea(
          child: Column(
            crossAxisAlignment : CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  Row(
                    children:  [
                      const Icon(
                        Icons.account_circle,
                        color: Colors.black,
                        size: 70.0,
                      ),
                      const SizedBox(
                          width : 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:  [
                          const GetUsername(),
                          const SizedBox(height: kSmallHeightSpacer),
                          Text('${FirebaseAuth.instance.currentUser!.email}'),
                          const SizedBox(height: 6),
                          // const Text("122 notes")
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: kMargin*1.5,
                  ),
                ],
              ),
              MyMenuItem(menuItemData: menuItemsData[0]),
              MyMenuItem(menuItemData: menuItemsData[1]),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.only(left: kMargin/2),
                child: Row(
                  children: [
                    const Icon(
                      Icons.logout,
                      color: Colors.black,
                      size: 40,
                    ),
                    const SizedBox(width: kMargin/4),
                    TextButton(
                      onPressed: () {
                        _signOut();
                        Navigator.pushNamed(context, kLoginRoute);
                      },
                      child: const Text(
                        "Se déconnecter",
                        style: kTitleStyle,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      )
    );
  }
}

