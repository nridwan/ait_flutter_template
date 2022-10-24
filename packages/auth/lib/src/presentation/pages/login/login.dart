import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DesignText.h3(
            'Login',
          ).bold,
          const SizedBox(height: 12),
          DesignText.body2('Welcome back! Let\'s login to your account').bold,
          const SizedBox(height: 32),
          const DesignTextInput(
            hint: 'Username / Email / Phone No.',
            initialText: '',
          )
        ],
      ),
    );
  }
}
