import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../constants/constants.dart';

class SignUpCarousel extends StatefulWidget {
  const SignUpCarousel({super.key});

  @override
  State<SignUpCarousel> createState() => _SignUpCarouselState();
}

class _SignUpCarouselState extends State<SignUpCarousel> {
  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: ksignUpImages.length,
      itemBuilder: (context, index, realIndex) {
        return Image.asset(
          ksignUpImages[index],
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.cover,
        );
      },
      options: CarouselOptions(
        viewportFraction: 1,
        height: MediaQuery.of(context).size.height,
        autoPlay: true,
        autoPlayInterval: const Duration(
          milliseconds: 3000,
        ),
        onPageChanged: (index, reason) => setState(() => activeIndex = index),
      ),
    );
  }
}
