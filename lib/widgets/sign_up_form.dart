import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:sign_in_up/widgets/form_group.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const FormGroup(
          label: 'Name',
          placeholder: 'Enter your name',
        ),
        const SizedBox(
          height: 24,
        ),
        const FormGroup(
          label: 'Email',
          placeholder: 'example@mail.com',
        ),
        const SizedBox(
          height: 24,
        ),
        const FormGroup(
          label: 'Password',
          placeholder: 'at least 8 characters',
          obscureText: true,
        ),
        CheckboxListTile(
          value: true,
          onChanged: (value) {},
          title: const Text(
            'I agree with Terms and Privacy',
            style: TextStyle(
              fontSize: 15,
            ),
          ),
          contentPadding: const EdgeInsets.all(0),
          controlAffinity: ListTileControlAffinity.leading,
          activeColor: const Color(0XFF7C4FFB),
        ),
        TextButton(
          onPressed: () {},
          child: Container(
            width: double.infinity,
            height: 56,
            decoration: BoxDecoration(
              color: const Color(0XFF7C4FFB),
              borderRadius: BorderRadius.circular(8),
            ),
            alignment: Alignment.center,
            child: const Text(
              'Get started',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        const Divider(
          thickness: 2,
          color: Color(0XFFD4D4D4),
        ),
        const SizedBox(
          height: 30,
        ),
        Center(
          child: RichText(
            text: TextSpan(
              text: 'Already have an account ',
              style: DefaultTextStyle.of(context).style,
              children: [
                TextSpan(
                  text: 'Log in',
                  style: const TextStyle(
                    color: Color(0XFF7C4FFB),
                  ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () => Navigator.pop(context),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
