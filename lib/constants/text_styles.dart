import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

double getTextScale(BuildContext context) {
  return MediaQuery.of(context).textScaleFactor;
}

TextStyle titleText = GoogleFonts.ptSerif();

TextStyle headingTextStyle(BuildContext context) {
  return GoogleFonts.indieFlower(
    fontWeight: FontWeight.bold,
    fontSize: 30 * getTextScale(context),
    color: Theme.of(context).primaryColor,
  );
}

TextStyle appBarTextStyle(BuildContext context) {
  return GoogleFonts.indieFlower(
    fontWeight: FontWeight.bold,
    fontSize: 24 * getTextScale(context),
  );
}

TextStyle primaryTextStyle(BuildContext context) {
  return GoogleFonts.indieFlower(
    fontSize: 18 * getTextScale(context),
  );
}

TextStyle secondaryTextStyle(BuildContext context) {
  return GoogleFonts.indieFlower(
    fontSize: 15 * getTextScale(context),
  );
}

TextStyle labelTextStyle(BuildContext context) {
  return GoogleFonts.indieFlower(
    fontSize: 18 * getTextScale(context),
  );
}

TextStyle hintTextStyle(BuildContext context) {
  return GoogleFonts.indieFlower(
    fontSize: 18 * getTextScale(context),
  );
}

TextStyle buttonTextStyle(BuildContext context) {
  return GoogleFonts.indieFlower(
    fontSize: 18 * getTextScale(context),
  );
}
