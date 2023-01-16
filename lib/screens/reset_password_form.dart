import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:exame/partials/buttons/form_button.dart';
import '../partials/form/email_input.dart';
import 'package:exame/partials/form/form_header.dart';
import '../partials/link.dart';
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
                          top: kNormalHeightSpacer* 2.5, bottom: kNormalHeightSpacer),
                      padding:  const EdgeInsets.symmetric(
                        vertical: kNormalHeightSpacer,
                        horizontal: kMargin,
                      ),
                      child: Column(
                        children: [
                          const EmailInput(),
                          const SizedBox(height: kLoginInputSpacer),
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
                            height: kNormalHeightSpacer*2,
                          ),
                          Button(label : 'Envoyer un mail de reinitialisation', onPressed: () {
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

