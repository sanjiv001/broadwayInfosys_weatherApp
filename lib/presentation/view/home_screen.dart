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
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: FutureBuilder(
            future: currentWeatherData,
            builder: (context, snapshot) {
              if (snapshot.data == null) {
                return const Center(child: Text("No Data Available!!!"));
              }
              if (snapshot.data == snapshot.connectionState) {
                return const Center(
                    child: CircularProgressIndicator.adaptive());
              }
              print("$snapshot");
              return ListView.builder(
                itemBuilder: (context, index) => Container(
                  color: Colors.amber,
                  height: 1000,
                  child: Center(child: Text(snapshot.data.wind.speed)),
                ),
              );
            }),
      ),
    );
  }
}
