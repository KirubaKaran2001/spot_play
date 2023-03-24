import 'package:flutter/material.dart';

class BorderDecoration extends StatelessWidget {
  final CustomClipper<Path>? clipper;
  final double? height;
  final double? width;
  final Color? color1;
  final Color? color2;

  const BorderDecoration({
    required this.clipper,
    required this.height,
    required this.width,
    required this.color1,
    required this.color2,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: clipper,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              color1!,
              color2!,
            ],
          ),
        ),
      ),
    );
  }
}

class BorderCurve extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.moveTo(0, 0);
    path.lineTo(size.height, 0);
    path.cubicTo(
      size.width * 0.35,
      size.height * 0.45,
      size.width * 0.10,
      size.height * 0.20,
      0,
      size.height * 0.45,
    );
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}

class BottomborderDecoration extends StatelessWidget {
  final CustomClipper<Path>? clipper;
  final double? height;
  final double? width;
  final Color? color1;
  final Color? color2;

  const BottomborderDecoration({
    Key? key,
    required this.clipper,
    required this.height,
    required this.width,
    required this.color1,
    required this.color2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      child: Align(
        alignment: FractionalOffset.bottomCenter,
        child: ClipPath(
          clipper: BottomSquare(),
          child: Container(
            height: MediaQuery.of(context).size.height * 0.25,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
                colors: [
                  color1!,
                  color2!,
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class BottomSquare extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.moveTo(0, size.width);
    path.cubicTo(
      size.width * 0.10,
      size.height * 0.10,
      size.width * 0.75,
      size.height * 0.75,
      size.width,
      0,
    );
    path.lineTo(size.width, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}

class OpenPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint1 = Paint()
      ..color = const Color(0xffff3838)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 5;
    canvas.drawArc(
        const Offset(100, 100) & const Size(100, 100), 0, 2, false, paint1);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
