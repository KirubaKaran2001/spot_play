// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OtpWidget extends StatelessWidget {
  final TextEditingController controller;
  final bool autoFocus;
  const OtpWidget({
    Key? key,
    required this.controller,
    required this.autoFocus,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextFormField(
        autofocus: autoFocus,
        controller: controller,
        decoration: const InputDecoration(
          border: OutlineInputBorder(),
          counterText: '',
        ),
        keyboardType: TextInputType.number,
        inputFormatters: <TextInputFormatter>[
          FilteringTextInputFormatter.digitsOnly,
          LengthLimitingTextInputFormatter(1)
        ],
        onChanged: (value) {
          if (value.length == 1) {
            FocusScope.of(context).nextFocus();
          }
        },
      ),
    );
  }
}
