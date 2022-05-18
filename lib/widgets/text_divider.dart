import 'package:flutter/material.dart';

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
        const Expanded(
          child: Divider(
            thickness: 2,
            color: Color(0XFFD4D4D4),
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(
            horizontal: 23,
          ),
          child: Text(text),
        ),
        const Expanded(
          child: Divider(
            thickness: 2,
            color: Color(0XFFD4D4D4),
          ),
        ),
      ],
    );
  }
}
