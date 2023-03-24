// ignore_for_file: library_private_types_in_public_api, must_be_immutable

import 'package:flutter/material.dart';
import '../components/select_cards.dart';
import '../constants/constants.dart';
import '../constants/text_styles.dart';

class AddAddressForm extends StatefulWidget {
  const AddAddressForm({Key? key}) : super(key: key);

  @override
  _AddAddressFormState createState() => _AddAddressFormState();
}

class _AddAddressFormState extends State<AddAddressForm> {
  List<Map<String, dynamic>> addAddressList = [];
  bool longPressFlag = false;
  List<int> indexList = [];
  int index = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'ADD AN ADDRESS',
          style: appBarTextStyle(context),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
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
                            optionsBuilder:
                                (TextEditingValue textEditingValue) {
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
                                backgroundColor: Theme.of(context)
                                    .appBarTheme
                                    .backgroundColor,
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
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Card(
                elevation: 6,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Select Screens',
                      style: headingTextStyle(context).copyWith(
                        color: Colors.black,
                      ),
                    ),
                    const Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            SelectCard(
                              index: index,
                              longPressEnabled: longPressFlag,
                              callback: () {
                                if (indexList.contains(index)) {
                                  indexList.remove(index);
                                } else {
                                  indexList.add(index);
                                }
                                longPress();
                              },
                            ),
                            Text(
                              'One Screen',
                              style: primaryTextStyle(context).copyWith(
                                fontSize: 25,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            SelectCard(
                              index: index,
                              longPressEnabled: longPressFlag,
                              callback: () {
                                if (indexList.contains(index)) {
                                  indexList.remove(index);
                                } else {
                                  indexList.add(index);
                                }
                                longPress();
                              },
                            ),
                            Text(
                              'Two Screens',
                              style: primaryTextStyle(context).copyWith(
                                fontSize: 25,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            SelectCard(
                              index: index,
                              longPressEnabled: longPressFlag,
                              callback: () {
                                if (indexList.contains(index)) {
                                  indexList.remove(index);
                                } else {
                                  indexList.add(index);
                                }
                                longPress();
                              },
                            ),
                            Text(
                              'Three Screens',
                              style: primaryTextStyle(context).copyWith(
                                fontSize: 25,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            SelectCard(
                              index: index,
                              longPressEnabled: longPressFlag,
                              callback: () {
                                if (indexList.contains(index)) {
                                  indexList.remove(index);
                                } else {
                                  indexList.add(index);
                                }
                                longPress();
                              },
                            ),
                            Text(
                              'Select Screens',
                              style: primaryTextStyle(context).copyWith(
                                fontSize: 25,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void longPress() {
    setState(() {
      if (indexList.isEmpty) {
        longPressFlag = false;
      } else {
        longPressFlag = true;
      }
    });
  }
}
