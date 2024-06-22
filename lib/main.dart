import 'package:broadwayinfosys_weatherapp/Theme/app_theme.dart';
import 'package:broadwayinfosys_weatherapp/presentation/view/navigation_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WeatherApp',
      theme: lightTheme(context),
      home: const NavigationButtonBarScreen(),
    );
  }
}
