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

class ResetPassword extends StatefulWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
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
                                text: 's\'incrire',
                                onTap: () {
                                  Navigator.pushNamed(context, kRegisterRoute);
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

