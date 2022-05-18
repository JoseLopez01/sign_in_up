import 'package:flutter/material.dart';

class FormTitle extends StatelessWidget {
  const FormTitle({
    Key? key,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          subtitle,
          style: const TextStyle(
            fontSize: 14,
          ),
        ),
      ],
    );
  }
}
