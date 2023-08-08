import 'package:flutter/material.dart';

import '../../styles/colors.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String? label;
  const CustomButton({super.key, this.onPressed, this.label});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(primaryColor),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6.0),
          ),
        ),
      ),
      child: SizedBox(
        width: 120,
        height: 50,
        child: Center(
          child: Text(
            label!,
            style: const TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
