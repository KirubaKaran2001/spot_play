import 'package:flutter/material.dart';
import 'package:spot_play/components/sign_up_carousel.dart';
import 'package:spot_play/components/sign_up_image.dart';
import 'package:spot_play/custom_painter_class/custom.dart';
import 'package:spot_play/forms/login_form.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    debugPrint(MediaQuery.of(context).size.width.toString());
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            BorderDecoration(
              clipper: BorderCurve(),
              height: MediaQuery.of(context).size.height * 0.60,
              width: MediaQuery.of(context).size.width * 0.60,
              color1: const Color(0xffc8332c),
              color2: Colors.orange,
            ),
            BottomborderDecoration(
              clipper: BottomSquare(),
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              color1: const Color(0xffc8332c),
              color2: Colors.orange,
            ),
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.all(50.0),
                child: Card(
                  elevation: 5,
                  child: getLoginContents(context),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget getLoginContents(BuildContext context) {
    if (MediaQuery.of(context).size.width >= 1600) {
      return Row(
        children: const [
          Expanded(
            flex: 7,
            child: SignUpImage(),
          ),
          SizedBox(
            width: 40,
          ),
          Expanded(
            flex: 3,
            child: SingleChildScrollView(
              child: LoginForm(),
            ),
          ),
          SizedBox(
            width: 40,
          ),
        ],
      );
    } else if (MediaQuery.of(context).size.width >= 800 &&
        MediaQuery.of(context).size.width <= 1599) {
      return Row(
        children: const [
          Expanded(
            child: SignUpCarousel(),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.fromLTRB(40, 40, 40, 20),
              child: LoginForm(),
            ),
          ),
        ],
      );
    } else {
      return const Padding(
        padding: EdgeInsets.fromLTRB(40, 40, 40, 20),
        child: LoginForm(),
      );
    }
  }
}
