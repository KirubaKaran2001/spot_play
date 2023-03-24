import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:spot_play/components/otp_componets.dart';
import 'package:spot_play/constants/text_styles.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  Timer? _timer;
  int _start = 60;
  bool isLoading = false;
  final TextEditingController _fieldOne = TextEditingController();
  final TextEditingController _fieldTwo = TextEditingController();
  final TextEditingController _fieldThree = TextEditingController();
  final TextEditingController _fieldFour = TextEditingController();
  bool isResendOTP = false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Welcome back !',
            style: headingTextStyle(context),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            'Please login to continue...',
            style: primaryTextStyle(context),
          ),
          const SizedBox(
            height: 40,
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
              labelText: 'Enter your Number',
              border: const OutlineInputBorder(),
              labelStyle: labelTextStyle(context),
            ),
            keyboardType: TextInputType.number,
            inputFormatters: <TextInputFormatter>[
              FilteringTextInputFormatter.digitsOnly,
              LengthLimitingTextInputFormatter(10)
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Align(
            alignment: Alignment.centerRight,
            child: ElevatedButton(
              onPressed: () {},
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  'Get OTP',
                  style: buttonTextStyle(context),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            'OTP',
            style: primaryTextStyle(context),
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            children: [
              OtpWidget(
                autoFocus: true,
                controller: _fieldOne,
              ),
              const SizedBox(
                width: 5,
              ),
              OtpWidget(
                autoFocus: false,
                controller: _fieldTwo,
              ),
              const SizedBox(
                width: 5,
              ),
              OtpWidget(
                autoFocus: false,
                controller: _fieldThree,
              ),
              const SizedBox(
                width: 5,
              ),
              OtpWidget(
                autoFocus: false,
                controller: _fieldFour,
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: (isResendOTP == false)
                ? MainAxisAlignment.end
                : MainAxisAlignment.spaceBetween,
            children: [
              if (isResendOTP == true)
                Text(
                  (_start > 0)
                      ? (_start > 9)
                          ? '00 : 00 : $_start '
                          : '00 : 00: 0$_start'
                      : '',
                  style: headingTextStyle(context),
                ),
                 (_start < 60 && _start > 0)
                  ? const Text('')
                  : Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: () {
                          setState(() {
                            _start = 60;
                            isResendOTP = true;
                            isLoading = true;
                          });
                          startTimer();
                        },
                        child: Row(
                          children: [
                            const Icon(
                              Icons.refresh,
                              size: 20,
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            Text(
                              'Resend OTP',
                              style: buttonTextStyle(context),
                            ),
                          ],
                        ),
                      ),
                    ),
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.only(
                left: 20.0,
                right: 10,
                bottom: 20,
              ),
              child: ElevatedButton(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    'Login',
                    style: buttonTextStyle(context),
                  ),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/addresses');
                },
              ),
            ),
          )
        ],
      ),
    );
  }

  void startTimer() {
    const oneSec = Duration(seconds: 1);
    _timer = Timer.periodic(
      oneSec,
      (Timer timer) {
        if (_start == 0) {
          setState(() {
            timer.cancel();
            isLoading = false;
          });
        } else {
          setState(() {
            _start--;
          });
        }
      },
    );
  }

  @override
  void dispose() {
    super.dispose();
    _timer!.cancel();
  }
}
