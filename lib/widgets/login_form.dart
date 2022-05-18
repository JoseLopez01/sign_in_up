import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:sign_in_up/widgets/form_group.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const FormGroup(
          label: 'Email',
          placeholder: 'email@example.com',
        ),
        const SizedBox(
          height: 24,
        ),
        const FormGroup(
          label: 'Password',
          placeholder: 'Password',
          secondAction: 'Forgot password?',
          obscureText: true,
          suffixIcon: Icon(
            Icons.remove_red_eye_outlined,
          ),
        ),
        const SizedBox(
          height: 4,
        ),
        CheckboxListTile(
          value: true,
          onChanged: (value) {},
          title: const Text('Remember me'),
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
              'Log in',
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
              text: 'Dont\' have an account ',
              style: DefaultTextStyle.of(context).style,
              children: [
                TextSpan(
                  text: 'Sign up',
                  style: const TextStyle(
                    color: Color(0XFF7C4FFB),
                  ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () => Navigator.pushNamed(
                          context,
                          'signup_screen',
                        ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
