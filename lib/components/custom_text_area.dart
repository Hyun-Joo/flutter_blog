import 'package:flutter/material.dart';

class CustomTextArea extends StatelessWidget {
  final String hint;
  final funValidator;

  const CustomTextArea({required this.hint, required this.funValidator});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 5),
        child: TextFormField(
          maxLines: 10,
          validator: funValidator,
          obscureText: hint.toLowerCase() == 'password',
          decoration: InputDecoration(
            hintText: 'Type $hint',
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5)
            ),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5)
            ),
            errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5)
            ),
            focusedErrorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5)
            ),
          ),
        )
    );
  }
}