import 'package:flutter/material.dart';

import '../constants/text_styles.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Welcome To Spot !',
            style: headingTextStyle(context),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            'Register Your Account.',
            style: primaryTextStyle(context),
          ),
          const SizedBox(
            height: 40,
          ),
          Text(
            'Name',
            style: primaryTextStyle(context),
          ),
          const SizedBox(
            height: 15,
          ),
          TextFormField(
            style: labelTextStyle(context),
            decoration: InputDecoration(
              border: const OutlineInputBorder(),
              labelText: 'Enter your Name',
              labelStyle: labelTextStyle(context),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            'Email',
            style: primaryTextStyle(context),
          ),
          const SizedBox(
            height: 15,
          ),
          TextFormField(
            style: labelTextStyle(context),
            decoration: InputDecoration(
              border: const OutlineInputBorder(),
              labelText: 'Enter your Email',
              labelStyle: labelTextStyle(context),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            'Phone',
            style: primaryTextStyle(context),
          ),
          const SizedBox(
            height: 15,
          ),
          TextFormField(
            style: labelTextStyle(context),
            decoration: InputDecoration(
              border: const OutlineInputBorder(),
              labelText: 'Enter your Phone',
              labelStyle: labelTextStyle(context),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Align(
            alignment: Alignment.center,
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/login');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor:
                    Theme.of(context).floatingActionButtonTheme.backgroundColor,
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  'SignUp',
                  style: buttonTextStyle(context),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
