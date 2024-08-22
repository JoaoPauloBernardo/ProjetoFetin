import 'package:fetin_app/common/constants/custom_texte_form_field.dart';
import 'package:flutter/material.dart';

class PasswordTextFormField extends StatefulWidget {
  final TextEditingController? controller;
  final Padding? padding;
  final String? text;
  final bool? isHiden;

  const PasswordTextFormField({
    super.key,
    this.controller, 
    this.padding, 
    this.text, 
    this.isHiden
    });

  @override
  State<PasswordTextFormField> createState() => _PasswordTextFormFieldState();
}

class _PasswordTextFormFieldState extends State<PasswordTextFormField> {
  bool isHiden = true;

  @override
  Widget build(BuildContext context) {
    return LoginTextFormField(
      text: widget.text,
      obscureText: isHiden,
    );
  }
}