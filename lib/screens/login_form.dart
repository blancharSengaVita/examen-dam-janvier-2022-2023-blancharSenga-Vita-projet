import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../styles/constants.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: SafeArea(
            child: Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Center(
              child: Column(
                children: [
                  SvgPicture.asset(
                  'assets/pictures/sparkles.svg',
                  semanticsLabel: '3 étincelles'
              ),
                  const Text(
                    'Movies',
                    style: kMainTextStyle,
                  ),
                  const Text(
                    'L’application pour découvrir des nouveaux film.',
                    style: kMainTextStyle,
                  ),
                ],
              )
            ),
          ],
        ),
      ),
    )));
  }
}
