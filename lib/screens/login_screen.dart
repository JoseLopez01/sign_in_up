import 'package:flutter/material.dart';
import 'package:sign_in_up/widgets/form_title.dart';
import 'package:sign_in_up/widgets/login_form.dart';
import 'package:sign_in_up/widgets/social_providers.dart';
import 'package:sign_in_up/widgets/text_divider.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(
            vertical: 56,
            horizontal: 32,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              FormTitle(
                title: 'Log in',
                subtitle:
                    'Welcome back! Enter your email and password below to Log in.',
              ),
              SizedBox(
                height: 40,
              ),
              SocialProviders(),
              SizedBox(
                height: 32,
              ),
              TextDivider('Or'),
              SizedBox(
                height: 32,
              ),
              LoginForm(),
            ],
          ),
        ),
      ),
    );
  }
}
