import 'package:flutter/material.dart';

int crossAxisCount(context) {
  if (MediaQuery.of(context).size.width <= 500) {
    return 1;
  }
  if (MediaQuery.of(context).size.width > 500 &&
      MediaQuery.of(context).size.width <= 700) {
    return 2;
  } else if (MediaQuery.of(context).size.width > 700 &&
      MediaQuery.of(context).size.width <= 1000) {
    return 3;
  } else if (MediaQuery.of(context).size.width > 1000 &&
      MediaQuery.of(context).size.width <= 1200) {
    return 4;
  } else if (MediaQuery.of(context).size.width > 1200 &&
      MediaQuery.of(context).size.width <= 1400) {
    return 4;
  } else if (MediaQuery.of(context).size.width > 1400 &&
      MediaQuery.of(context).size.width <= 1600) {
    return 5;
  } else if (MediaQuery.of(context).size.width > 1600 &&
      MediaQuery.of(context).size.width <= 1800) {
    return 5;
  } else if (MediaQuery.of(context).size.width > 1800 &&
      MediaQuery.of(context).size.width <= 2000) {
    return 6;
  } else {
    return 0;
  }
}
