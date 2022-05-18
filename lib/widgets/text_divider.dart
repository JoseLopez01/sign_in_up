import 'package:flutter/material.dart';
import 'package:sign_in_up/app_constants.dart';

class TextDivider extends StatelessWidget {
  const TextDivider(
    this.text, {
    Key? key,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Divider(
            thickness: 2,
            color: kGrey,
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(
            horizontal: 23,
          ),
          child: Text(text),
        ),
        Expanded(
          child: Divider(
            thickness: 2,
            color: kGrey,
          ),
        ),
      ],
    );
  }
}
