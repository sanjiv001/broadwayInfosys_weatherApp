import 'package:broadwayinfosys_weatherapp/Theme/app_theme.dart';
import 'package:broadwayinfosys_weatherapp/presentation/view/navigation_screen.dart';
import 'package:broadwayinfosys_weatherapp/provider/provider.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  if (kDebugMode) {
    Provider.debugCheckInvalidValueType = null;
  }

  runApp(
    MultiProvider(
      providers: AppProvider.listOfProvider,
      child: const MyApp(),
    ),
  );
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
