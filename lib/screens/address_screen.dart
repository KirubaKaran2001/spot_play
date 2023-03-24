import 'package:flutter/material.dart';
import 'package:spot_play/constants/text_styles.dart';

import '../components/render_grid.dart';

class AddressesScreen extends StatefulWidget {
  const AddressesScreen({super.key});

  @override
  State<AddressesScreen> createState() => _AddressesScreenState();
}

class _AddressesScreenState extends State<AddressesScreen> {
  @override
  Widget build(BuildContext context) {
    debugPrint(MediaQuery.of(context).size.width.toString());
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'MY ADDRESSES',
            style: appBarTextStyle(context),
          ),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/profile');
              },
              icon: const Icon(Icons.supervised_user_circle_outlined),
            )
          ],
        ),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            Navigator.pushNamed(context, '/addAddress');
          },
          label: Text(
            'Add Address',
            style: buttonTextStyle(context),
          ),
          icon: const Icon(Icons.home),
        ),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: crossAxisCount(context),
            ),
            itemCount: 50,
            itemBuilder: (context, index) {
              return Card(
                child: Text(
                  'Sameta Metal pro Private Limited ,Bommasandra,Bangalore,Karnataka,560100',
                  style: primaryTextStyle(context),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
