import 'package:flutter/material.dart';
import 'package:sign_in_up/widgets/form_title.dart';
import 'package:sign_in_up/widgets/sign_up_form.dart';
import 'package:sign_in_up/widgets/social_providers.dart';
import 'package:sign_in_up/widgets/text_divider.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

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
                title: 'Sign up',
                subtitle: 'Start turning your ideas into reality.',
              ),
              SizedBox(
                height: 40,
              ),
              SocialProviders(),
              SizedBox(
                height: 24,
              ),
              TextDivider('or'),
              SizedBox(
                height: 24,
              ),
              SignUpForm(),
            ],
          ),
        ),
      ),
    );
  }
}
