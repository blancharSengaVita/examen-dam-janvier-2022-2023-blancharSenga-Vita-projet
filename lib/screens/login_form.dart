import 'package:exame/partials/buttons/form_button.dart';
import 'package:exame/partials/form/form_header.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../partials/form/email_input.dart';
import '../partials/form/password_input.dart';
import '../partials/links.link.dart';
import '../routes/router.dart';
import '../routes/routes.dart';
import '../styles/constants.dart';

class LoginForm extends StatelessWidget {
  LoginForm({Key? key}) : super(key: key);
  final _loginFormKey = GlobalKey<FormState>();
  String _email = "blanchar@gmail.com";
  String _password = "1234567890";

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: SafeArea(
            child: Form(
              key: _loginFormKey,
      child:  Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
            const Center(
              child: FormHeader()
            ),
            Container(
              margin:  const EdgeInsets.only(
                  top: kMargin * 2.5, bottom: kMargin),
              padding:  const EdgeInsets.symmetric(
                vertical: kMargin,
                horizontal: kMargin,
              ),
              child: Column(
                children: [
                  EmailInput(
                    onChanged: (value) {
                      _email = value;
                    },
                  ),
                  const SizedBox(
                    height: 22,
                  ),
                  PasswordInput(onChanged: (value) {
                    _password = value;
                  }),
                  const SizedBox(height: 14),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Link(
                          text: 'Créer un compte',
                          onTap: () {
                            Navigator.pushNamed(context, kRegisterRoute);
                          }),
                      Link(
                        text: 'Mot de passe oublié',
                        onTap: () {
                          Navigator.pushNamed(context, kResetPasswordRoute);
                        },
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Button(label : 'Se connecter', onPressed: () {
                    goHome(formKey: _loginFormKey, context: context);
                  }
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    )));
  }
}

