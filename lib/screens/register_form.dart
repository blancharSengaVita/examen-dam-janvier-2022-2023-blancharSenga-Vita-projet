import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:exame/partials/buttons/form_button.dart';
import '../partials/form/email_input.dart';
import '../partials/form/password_input.dart';
import '../partials/form/username.dart';
import 'package:exame/partials/form/form_header.dart';
import '../partials/link.dart';
import '../partials/model/error_firebase_auth.dart';
import '../routes/router.dart';
import '../routes/routes.dart';
import '../styles/constants.dart';

class RegisterForm extends StatefulWidget {
  const RegisterForm({Key? key}) : super(key: key);

  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final _registerFormKey = GlobalKey<FormState>();
  String _userName = "";
  String _email = "aze@fggg.com";
  String _password = "blanchar";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Form(
      key: _registerFormKey,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Center(child: FormHeader()),
            Container(
              margin:
                  const EdgeInsets.only(top: kMargin * 2.5, bottom: kMargin),
              padding: const EdgeInsets.symmetric(
                vertical: kMargin,
                horizontal: kMargin,
              ),
              child: Column(
                children: [
                  UserNameInput(
                    onChanged: (value) {
                      _userName = value;
                    },
                  ),
                  const SizedBox(
                    height: 22,
                  ),
                  EmailInput(onChanged: (value) {
                    _email = value;
                  }),
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
                          text: 'Se connecter',
                          onTap: () {
                            Navigator.pushNamed(context, kLoginRoute);
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
                  Button(
                      label: 'Créer un compte',
                      onPressed: () async {
                        if (_registerFormKey.currentState != null &&
                            _registerFormKey.currentState!.validate()) {
                          try {
                            await FirebaseAuth.instance
                                .createUserWithEmailAndPassword(
                                    email: _email, password: _password)
                                .then((value) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                    content: Text(
                                        'Bonjour ${FirebaseAuth.instance.currentUser!.email}')),
                              );
                              Navigator.pushNamed(context, kHomeRoute);
                            });

                            FirebaseFirestore.instance.collection('users').add({
                              'email': _email,
                              'username': _userName,
                              'password': _password,
                              //je sais qu'on doit pas enregistre le mdp
                              //mais je le fais pour copier coller quand j'ai envie
                              //de me connecter à mon app c'est relou de taper sur
                              //le clavier quand il est en mode anglais

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
                      })
                ],
              ),
            ),
          ],
        ),
      ),
    )));
  }
}
