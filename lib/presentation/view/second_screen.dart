import 'package:broadwayinfosys_weatherapp/controller/weekly_weather_report_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    Provider.of<WeeklyWeatherController>(context, listen: false)
        .fetchWeeklyWeather();
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Weekly Weather Report")),
      ),
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
        child: Consumer<WeeklyWeatherController>(
          builder: (context, controller, child) {
            if (controller.weeklyWeatherReport == null) {
              return const Center(
                child: Text("No Data Available"),
              );
            } else if (controller.weeklyWeatherReport ==
                ConnectionState.waiting) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }

            final weather = controller!.weeklyWeatherReport;
            print(weather);
            return SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Location: (${weather?.latitude}, ${weather?.longitude})",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Current Temperature: ${weather?.current?.temperature2m} °C",
                      style: TextStyle(fontSize: 18),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Relative Humidity: ${weather?.current?.relativeHumidity2m}%",
                      style: TextStyle(fontSize: 18),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Is Day: ${weather?.current?.isDay == 1 ? 'Yes' : 'No'}",
                      style: TextStyle(fontSize: 18),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Precipitation: ${weather?.current?.precipitation} mm",
                      style: TextStyle(fontSize: 18),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Rain: ${weather?.current?.rain} mm",
                      style: TextStyle(fontSize: 18),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Snowfall: ${weather?.current?.snowfall} cm",
                      style: TextStyle(fontSize: 18),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Cloud Cover: ${weather?.current?.cloudCover}%",
                      style: TextStyle(fontSize: 18),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Pressure (MSL): ${weather?.current?.pressureMsl} hPa",
                      style: TextStyle(fontSize: 18),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Surface Pressure: ${weather?.current?.surfacePressure} hPa",
                      style: TextStyle(fontSize: 18),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Wind Speed: ${weather?.current?.windSpeed10m} m/s",
                      style: TextStyle(fontSize: 18),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Wind Direction: ${weather?.current?.windDirection10m}°",
                      style: TextStyle(fontSize: 18),
                    ),
                    // Add more fields as needed
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
