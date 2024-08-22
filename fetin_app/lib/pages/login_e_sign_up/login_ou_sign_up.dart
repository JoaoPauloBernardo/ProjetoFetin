import 'package:fetin_app/common/constants/app_buttos.dart';
import 'package:fetin_app/common/constants/app_colors.dart';
import 'package:fetin_app/common/constants/custom_texte_form_field.dart';
import 'package:fetin_app/common/constants/password_text_form_field.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

// TODO: verificador de email

class LoginOrSignUp extends StatelessWidget {
  const LoginOrSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(
            width: 178,
            height: 43,
            child: Text(  //* titulo
              'Scalet Mate',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFF190482),
                fontSize: 32,
                fontFamily: 'Arimo',
                fontWeight: FontWeight.w700,
                height: 0,
              ),
            ),
          ),
          LoginTextFormField( //* caixa de email
            text: 'Email',
            keyboardPattern: TextInputType.emailAddress,
          ),
          PasswordTextFormField( //* caixa de senha
            text: 'Senha',
            isHiden: false,
          ),
          RichText(
            text: TextSpan( //* esqueci minha senha
              recognizer: TapGestureRecognizer()..onTap =() => {

              },
              text: 'Esqueci minha senha',
              style: TextStyle(
                  color: AppColors.corAzulPrincipal,
                  fontSize: 12,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w600,
                  height: 0,
                ),
              )
            ),
          LoginPageButton(
            text: 'Login',
            painting: Color(0xFF0F024F),
            onPressed: (){

            },
            ),
          LoginPageButton(
            text: 'Criar conta',
            painting: Color(0xFF2A07DA),
            onPressed: (){

            },
          ),
        ],
      )
    );
  }
}