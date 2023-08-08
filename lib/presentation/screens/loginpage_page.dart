import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:oro_kalimpyo_login_signup/presentation/widgets/signup_form.dart';
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
  bool _showLoginText = false;
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
                      _showLoginForm
                          ? LoginForm(formKey: _formKey)
                          : SignupForm(formKey: _formKey),
                      const SizedBox(
                        height: 15,
                      ),
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: _showLoginText
                                  ? 'Don\'t have an account?'
                                  : 'Already have an account?',
                            ),
                            TextSpan(
                              text: _showLoginText ? ' Signup' : ' Login',
                              style: const TextStyle(
                                color: Colors.blue,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  setState(() {
                                    _showLoginForm = !_showLoginForm;
                                    _showLoginText = !_showLoginText;
                                  });

                                  _formKey.currentState?.reset();
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
