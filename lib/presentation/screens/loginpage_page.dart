import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:oro_kalimpyo_login_signup/styles/colors.dart';

import '../widgets/login_form.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  final _formKey = GlobalKey<FormState>();
  bool _showLoginForm = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Row(
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.5,
              decoration: const BoxDecoration(color: primaryColor),
            ),
            Expanded(
              child: Center(
                child: SizedBox(
                  width: 500,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      LoginForm(
                        formKey: _formKey,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      RichText(
                        text: TextSpan(
                          children: [
                            const TextSpan(text: "Don't have an account?"),
                            TextSpan(
                              text: ' Sign up',
                              style: const TextStyle(color: Colors.blue),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  // Handle the tap on the "Sign up" text here
                                },
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
