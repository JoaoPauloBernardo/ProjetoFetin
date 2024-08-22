import 'package:flutter/material.dart';

class LoginPageButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String text;
  final Color painting;
  
  const LoginPageButton({
    super.key, 
    this.onPressed, 
    required this.text, 
    required this.painting,
  });

  @override
  Widget build(BuildContext context) {
    return Material( 
      borderRadius: const BorderRadius.all(Radius.circular(38)),
      child: Ink( //* efeito de apertar
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(38)),
          color: painting,
        ),
        child: InkWell( //* transformacoa em botao
          borderRadius: const BorderRadius.all(Radius.circular(38)),
          onTap: onPressed,
          child: Container(  //* botao da pagina de login aparencia
            width: 220,
            height: 47.05,
            alignment: Alignment.center,
            decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: Text(
              text, //* texto do botao
              textAlign: TextAlign.center,
              
              style: TextStyle(
              color: Color(0xFFEBF2FF),
              fontSize: 14,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w800,
              height: 0,
              ),
            )
          ),
        )
      ),
    );
  }
}