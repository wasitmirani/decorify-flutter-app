import 'package:decorify/screens/home/welcome.dart';
import 'package:flutter/material.dart';

import '../screens/home/home_screen.dart';

class AppRoutes {
  static const String index = '/';
  static const String home = '/home';
  // static const String settings = '/settings';
  // static const int initialCounterValue = 0;

  static final routes = {
    index: (context) =>  const WelcomeScreen(),
    home: (context) => const HomeScreen(),
  };

  // static final arguments = {
  //   settings: initialCounterValue,
  // };
}
