import 'package:flutter/material.dart';
import 'package:spot_play/constants/text_styles.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Hello Rishi!'),
              const SizedBox(
                height: 10,
              ),
              Stack(
                children: [
                  Row(
                    children: [
                      Image.asset(
                        'assets/flag.png',
                        height: 30,
                        width: 30,
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Text(
                        '+91-9363777373  | rishirizz434@gmail.com',
                        style: primaryTextStyle(context).copyWith(
                          color: const Color(0xffd2d1d2),
                        ),
                      ),
                    ],
                  ),
                  Positioned(
                    right: 4,
                    child: TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        'Edit',
                        style: buttonTextStyle(context).copyWith(
                          color: const Color(0xffa56d66),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const Divider(
                color: Colors.red,
                thickness: 2,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Address',
                    style: secondaryTextStyle(context),
                  ),
                  const Icon(
                    Icons.arrow_forward_ios,
                  ),
                ],
              ),
              Text(
                'Add or update your address',
                style: hintTextStyle(context).copyWith(
                  color: Colors.black38,
                ),
              ),
              const Divider(),
              Text(
                'Rate us on a Play Store',
                style: primaryTextStyle(context)
                    .copyWith(color: const Color.fromARGB(255, 77, 75, 77)),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                'Send feedback',
                style: primaryTextStyle(context)
                    .copyWith(color: const Color.fromARGB(255, 77, 75, 77)),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                'Customer Support',
                style: primaryTextStyle(context)
                    .copyWith(color: const Color.fromARGB(255, 77, 75, 77)),
              ),
              const Divider(),
              Padding(
                padding: const EdgeInsets.only(
                  top: 10.0,
                  bottom: 10,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'LogOut',
                      style: buttonTextStyle(context),
                    ),
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        Icons.login,
                      ),
                    )
                  ],
                ),
              ),
              const Divider(),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
