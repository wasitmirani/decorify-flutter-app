import 'package:flutter/material.dart';

import 'routes/app_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();

 
}

class _MyAppState extends State<MyApp> {
  static bool is_debug = false;
  void appMode(val){
      setState(() {
      is_debug = val;
    });
  
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Test App',
      theme: ThemeData(brightness: Brightness.dark),
      debugShowCheckedModeBanner: is_debug,
      initialRoute: AppRoutes.index,
      routes: AppRoutes.routes,
    );
  }
}
