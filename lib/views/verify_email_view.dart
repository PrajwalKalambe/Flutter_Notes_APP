import 'package:flutter/material.dart';
import 'package:notes_app/constants/routes.dart';
import 'package:notes_app/services/auth/auth_service.dart';

class VerifyEmailView extends StatefulWidget {
  const VerifyEmailView({super.key});

  @override
  State<VerifyEmailView> createState() => _VerifyEmailViewState();
}

class _VerifyEmailViewState extends State<VerifyEmailView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Verify Email'),
        backgroundColor: Color.fromARGB(255, 89, 175, 247),
      ),
      body: Column(children: [
        const Text(
            "We've sent you the email verification. Please open it to verify your account."),
        const Text(
            "If you haven't recieved a verification email yet , press the button below"),
        TextButton(
          onPressed: () async {
            await AuthService.firebase().sendEmailVerification();
          },
          child: const Text('Send email verification!!'),
        ),
        TextButton(
          onPressed: () async {
            await AuthService.firebase().logOut();

            Navigator.of(context)
                .pushNamedAndRemoveUntil(registerRoute, (route) => false);
          },
          child: const Text('Restart'),
        )
      ]),
    );
  }
}
