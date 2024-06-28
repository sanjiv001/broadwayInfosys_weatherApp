import 'package:broadwayinfosys_weatherapp/controller/current_weather_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late Future currentWeatherData;
  @override
  void initState() {
    currentWeatherData =
        Provider.of<CurrentWeatherController>(context, listen: false)
            .fetchCurrentWeather();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/weather.JPG'),
            fit: BoxFit.cover,
          ),
          gradient: LinearGradient(
            colors: [Color(0xff00c4cc), Color.fromARGB(255, 25, 148, 185)],
          ),
        ),
        child: Center(
          child: Text("Kjkl"),
        ),
      ),
    );
  }
}
