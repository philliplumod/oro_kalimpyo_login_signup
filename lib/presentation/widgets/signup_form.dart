import 'package:flutter/material.dart';
import 'package:oro_kalimpyo_login_signup/presentation/widgets/custom_button.dart';
import 'package:oro_kalimpyo_login_signup/presentation/widgets/custom_textfield.dart';

class SignupForm extends StatelessWidget {
  const SignupForm({super.key, required GlobalKey<FormState> formKey})
      : _formKey = formKey;

  final GlobalKey<FormState> _formKey;

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Create an account',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            CustomTextField(
              hintText: 'Email',
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter your email';
                }
                return null;
              },
            ),
            const SizedBox(
              height: 20,
            ),
            CustomTextField(
              hintText: 'Password',
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter your password';
                }
                return null;
              },
            ),
            const SizedBox(
              height: 20,
            ),
            CustomButton(
              label: 'Signup',
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Processing Data')));
                }
              },
            )
          ],
        ));
  }
}
