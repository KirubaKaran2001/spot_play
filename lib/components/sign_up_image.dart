import 'package:flutter/material.dart';

class SignUpImage extends StatelessWidget {
  const SignUpImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/billboard1.gif',
      height: MediaQuery.of(context).size.height,
      fit: BoxFit.cover,
    );
  }
}
