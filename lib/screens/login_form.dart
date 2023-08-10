import 'package:exame/partials/buttons/form_button.dart';
import 'package:exame/partials/form/form_header.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../partials/form/email_input.dart';
import '../partials/form/password_input.dart';
import '../partials/link.dart';
import '../partials/model/error_firebase_auth.dart';
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
            child: Center(
              child: SingleChildScrollView(
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
                        height: kLoginInputSpacer*1.5,
                      ),
                      PasswordInput(onChanged: (value) {
                        _password = value;
                      }),
                      const SizedBox(height: kLoginInputSpacer),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Link(
                              text: 'Se créer un compte',
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
                        height: kLoginInputSpacer*2.9,
                      ),
                      Button(label : 'Se connecter', onPressed: () async {
                        if (_loginFormKey.currentState != null &&
                            _loginFormKey.currentState!.validate()) {
                          try {
                            await FirebaseAuth.instance
                                .signInWithEmailAndPassword(
                                email: _email, password: _password)
                                .then((value) {
                              Navigator.pushNamed(context, kHomeRoute);
                            });
                          } on FirebaseAuthException catch (e) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                  content: Text(
                                    errors[e.code]!,
                                    style: const TextStyle(color: Colors.white),
                                  ),
                                  backgroundColor: Colors.redAccent),
                            );
                          }
                        }
                      }
                      )
                    ],
                  ),
                ),
          ],
        ),
      ),
    ),
              ),
            )));
  }
}

