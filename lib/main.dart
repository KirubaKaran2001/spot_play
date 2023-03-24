import 'package:flutter/material.dart';
import 'package:spot_play/constants/app_theme.dart';
import 'package:spot_play/forms/add_address_form.dart';
import 'package:spot_play/forms/edit_address_form.dart';
import 'package:spot_play/maps/gogle_maps.dart';
import 'package:spot_play/screens/address_screen.dart';
import 'package:spot_play/screens/login_screen.dart';
import 'package:spot_play/screens/profile_screen.dart';
import 'package:spot_play/screens/signup_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: myLightTheme,
      home: const MapScreen(),
      debugShowCheckedModeBanner: false,
      onGenerateRoute: (RouteSettings settings) {
        debugPrint(
          'build route for ${settings.name}',
        );
        var routes = <String, WidgetBuilder>{
          '/signUp': (BuildContext context) => const SignUpScreen(),
          '/login': (BuildContext context) => const LoginScreen(),
          '/addresses': (BuildContext context) => const AddressesScreen(),
          '/addAddress': (BuildContext context) => const AddAddressForm(),
          '/editAddress': (BuildContext context) => const EditAddressForm(),
          '/profile': (BuildContext context) => const ProfileScreen(),
        };

        WidgetBuilder builder = routes[settings.name]!;
        return MaterialPageRoute(
          builder: (ctx) => builder(ctx),
        );
      },
    );
  }
}
