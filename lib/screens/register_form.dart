import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:exame/partials/buttons/form_button.dart';
import '../partials/form/email_input.dart';
import '../partials/form/password_input.dart';
import '../partials/form/username.dart';
import 'package:exame/partials/form/form_header.dart';
import '../partials/links.link.dart';
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

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: SafeArea(
            child: Form(
              key: _registerFormKey,
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
                          const UserNameInput(),
                          const SizedBox(
                            height: 22,
                          ),
                          const EmailInput(
                          ),
                          const SizedBox(
                            height: 22,
                          ),
                          const PasswordInput(),
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
                          Button(label : 'Se connecter', onPressed: () {
                            goHome(formKey: _registerFormKey, context: context);
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

