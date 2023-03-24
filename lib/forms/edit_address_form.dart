// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

import '../constants/constants.dart';
import '../constants/text_styles.dart';

class EditAddressForm extends StatefulWidget {
  const EditAddressForm({Key? key}) : super(key: key);

  @override
  _EditAddressFormState createState() => _EditAddressFormState();
}

class _EditAddressFormState extends State<EditAddressForm> {
  List<Map<String, dynamic>> addAddressList = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'EDIT AN ADDRESS',
          style: appBarTextStyle(context),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Card(
          elevation: 5,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Building Name',
                    style: primaryTextStyle(context),
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                    style: labelTextStyle(context),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Area/colony',
                    style: primaryTextStyle(context),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                    style: labelTextStyle(context),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    ' City',
                    style: primaryTextStyle(context),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                    style: labelTextStyle(context),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    'State',
                    style: primaryTextStyle(context),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color.fromARGB(255, 186, 184, 184),
                      ),
                    ),
                    child: Autocomplete<String>(
                      // initialValue: TextEditingValue(text: 'Jharkhand'),
                      optionsBuilder: (TextEditingValue textEditingValue) {
                        if (textEditingValue.text == '') {
                          return const Iterable<String>.empty();
                        }
                        return kstateList.where(
                          (String option) {
                            return option.contains(
                              textEditingValue.text.toUpperCase(),
                            );
                          },
                        );
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Pincode',
                    style: primaryTextStyle(context),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                    style: labelTextStyle(context),
                  ),
                  const SizedBox(
                    height: 60,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              Theme.of(context).appBarTheme.backgroundColor,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            'Cancel',
                            style: buttonTextStyle(context),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          // Navigator.pop(context);
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            'Save',
                            style: buttonTextStyle(context),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
