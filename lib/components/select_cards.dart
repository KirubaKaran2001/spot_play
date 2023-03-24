// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

class SelectCard extends StatefulWidget {
  final int index;
  final bool longPressEnabled;
  final VoidCallback callback;

  const SelectCard(
      {Key? key,
      required this.index,
      required this.longPressEnabled,
      required this.callback})
      : super(key: key);

  @override
  _SelectCardState createState() => _SelectCardState();
}

class _SelectCardState extends State<SelectCard> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onLongPress: () {
        setState(() {
          selected = !selected;
        });
        widget.callback();
      },
      onTap: () {
        if (widget.longPressEnabled) {
          setState(() {
            selected = !selected;
          });
          widget.callback();
        }
      },
      child: Container(
        margin: const EdgeInsets.all(5.0),
        decoration: selected
            ? BoxDecoration(
                color: Colors.black38,
                border: Border.all(
                  color: Colors.black,
                ),
              )
            : const BoxDecoration(),
        child: const Card(
          child: Icon(
            Icons.screenshot_monitor_sharp,
            size: 200,
          ),
        ),
      ),
    );
  }
}





// class SelectCards extends StatelessWidget {
//   String text;

//   SelectCards({
//     required this.text,
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       child: Column(
//         children: [
//           const Icon(
//             Icons.screenshot_monitor_outlined,
//             size: 200,
//           ),
//           Text(
//             'One screen',
//             style: headingTextStyle(context).copyWith(
//               color: Colors.black,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
