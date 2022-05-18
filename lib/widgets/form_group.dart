import 'package:flutter/material.dart';

class FormGroup extends StatelessWidget {
  const FormGroup({
    Key? key,
    required this.label,
    required this.placeholder,
    this.secondAction,
    this.suffixIcon,
    this.obscureText = false,
  }) : super(key: key);

  final String label;
  final String placeholder;
  final String? secondAction;
  final Widget? suffixIcon;
  final bool? obscureText;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              label,
              style: const TextStyle(fontWeight: FontWeight.w600),
            ),
            if (secondAction != null)
              Text(
                secondAction!,
                style: const TextStyle(
                  color: Color(0XFF7C4FFB),
                ),
              )
          ],
        ),
        const SizedBox(
          height: 6,
        ),
        TextFormField(
          obscureText: obscureText!,
          decoration: InputDecoration(
            hintText: placeholder,
            suffixIcon: suffixIcon,
          ),
          style: const TextStyle(
            color: Color(0XFF525252),
          ),
        ),
      ],
    );
  }
}
