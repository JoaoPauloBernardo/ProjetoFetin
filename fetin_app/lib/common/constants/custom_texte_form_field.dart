import 'package:flutter/material.dart';

class LoginTextFormField extends StatelessWidget {

  final String? text;
  final TextInputType? keyboardPattern;
  final bool? obscureText;
  
  // final EdgeInsetsGeometry? padding;
  // final String? hintText;
  // final TextCapitalization? textCapitalization;
  // final TextInputType? keyboardType;
  // final TextEditingController? controller;
  // final TextInputType? keyboardPattern;
  // final int? maxLength;
  // final TextInputAction? textInputAction;

  const LoginTextFormField({
    super.key, 
    this.text, 
    this.keyboardPattern, 
    this.obscureText,
    // this.keyboardPattern, 
    // this.padding, 
    // this.hintText, 
    // this.textCapitalization, 
    // this.keyboardType, 
    // this.controller, 
    // this.maxLength, 
    // this.textInputAction,
  });

  @override
  Widget build(BuildContext context) {
    return Form( //* preenchimento de informacao
      child: Column(
        children: [
          Container(
            width: 260,
            height: 40,
            decoration: ShapeDecoration(
              color: Color(0xFFD9D9D9),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            ),
            child: TextFormField(
              obscureText: obscureText ?? false,
              keyboardType: keyboardPattern,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: text,
                ),
            ),
          )
        ],
      ),
    );
  }
}