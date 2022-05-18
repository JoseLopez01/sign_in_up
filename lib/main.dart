import 'package:flutter/material.dart';
import 'package:sign_in_up/screens/login_screen.dart';
import 'package:sign_in_up/screens/signup_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final outlineInputBorder = OutlineInputBorder(
      borderSide: const BorderSide(
        color: Color(0XFFD4D4D4),
      ),
      borderRadius: BorderRadius.circular(8),
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'login_screen',
      routes: {
        'login_screen': (_) => const LoginScreen(),
        'signup_screen': (_) => const SignUpScreen(),
      },
      theme: ThemeData.light().copyWith(
        inputDecorationTheme: InputDecorationTheme(
          enabledBorder: outlineInputBorder,
          focusedBorder: outlineInputBorder,
          border: outlineInputBorder,
          hintStyle: const TextStyle(
            color: Color(0XFFD4D4D4),
          ),
        ),
      ),
    );
  }
}
