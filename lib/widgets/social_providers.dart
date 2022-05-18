import 'package:flutter/material.dart';
import 'package:sign_in_up/app_constants.dart';

class SocialProviders extends StatelessWidget {
  const SocialProviders({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const _SocialProvider(
          bgColor: Colors.black,
          color: Colors.white,
          icon: 'assets/apple.png',
          size: 32,
        ),
        _SocialProvider(
          bgColor: kFacebookBlue,
          color: Colors.white,
          icon: 'assets/facebook.png',
          size: 32,
        ),
        _SocialProvider(
          bgColor: kTwitterBlue,
          color: Colors.white,
          icon: 'assets/twitter.png',
          size: 32,
        ),
        const _SocialProvider(
          bgColor: Colors.white,
          color: Colors.white,
          icon: 'assets/google.png',
          size: 32,
          bordered: true,
        ),
      ],
    );
  }
}

class _SocialProvider extends StatelessWidget {
  const _SocialProvider({
    Key? key,
    required this.icon,
    required this.color,
    required this.size,
    required this.bgColor,
    this.bordered,
  }) : super(key: key);

  final String icon;
  final Color color;
  final double size;
  final Color bgColor;
  final bool? bordered;

  @override
  Widget build(BuildContext context) {
    final border = Border.all(
      color: const Color(0XFFBABABA),
      width: 1,
    );

    return Container(
      height: 60,
      width: 60,
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(12),
        border: bordered != null ? border : null,
      ),
      child: Image(
        image: AssetImage(icon),
        height: size,
        width: size,
      ),
    );
  }
}
