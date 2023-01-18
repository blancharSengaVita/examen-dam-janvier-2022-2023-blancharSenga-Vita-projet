import 'package:exame/routes/routes.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';


import '../screens/home.dart';
import '../screens/login_form.dart';
import '../screens/register_form.dart';
import '../screens/reset_password_form.dart';

Map<String, WidgetBuilder> router = {
  kHomeRoute: (context) =>  const Home(),
  kLoginRoute: (context) => LoginForm(),
  kRegisterRoute: (context) => const RegisterForm(),
  kResetPasswordRoute:(context) => const ResetPassword(),
};

goHome({formKey, context}) {
  if (formKey.currentState != null &&
      formKey.currentState!.validate()) {
    if (kDebugMode) {
      Navigator.pushNamed(context, kHomeRoute);
    } else {
      if (kDebugMode) {
        print('KO');
      }
    }
  }
}