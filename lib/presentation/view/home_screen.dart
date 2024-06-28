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

// class HomeScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         decoration: const BoxDecoration(
//           image: DecorationImage(
//             image: AssetImage('assets/images/rainy_weather.png'),
//             fit: BoxFit.cover,
//           ),
//           gradient: LinearGradient(
//             colors: [Color(0xff00c4cc), Color.fromARGB(255, 25, 148, 185)],
//           ),
//         ),
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Consumer<CurrentWeatherController>(
//             builder: (context, weatherController, child) {
//               if (weatherController.currentWeather == null) {
//                 return const Center(
//                   child: Text("No Data Available"),
//                 );
//               } else if (weatherController.currentWeather ==
//                   ConnectionState.waiting) {
//                 return const Center(
//                   child: CircularProgressIndicator.adaptive(),
//                 );
//               } else {
//                 return WeatherDetails(weatherController.currentWeather!);
//               }
//             },
//           ),
//         ),
//       ),
//     );
//   }
// }

// class WeatherDetails extends StatelessWidget {
//   final CurrentWeatherModel weather;

//   WeatherDetails(this.weather);

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Container(
//           decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(8),
//               color: Colors.white.withOpacity(0.25),
//               border: Border.all(
//                 color: Colors.white.withOpacity(0.75),
//                 style: BorderStyle.solid,
//                 width: 1,
//               )),
//           height: 60,
//           width: double.infinity,
//           child: const Row(
//             children: [
//               Icon(Icons.place),
//               Text(
//                 "Location",
//                 style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//               ),
//               SizedBox(
//                 width: 24,
//               ),
//               Text(
//                 "Kathmandu,Nepal",
//                 style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//               ),
//             ],
//           ),
//         ),
//         const SizedBox(
//           height: 2,
//         ),
//         Container(
//           decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(8),
//               color: Colors.white.withOpacity(0.25),
//               border: Border.all(
//                 color: Colors.white.withOpacity(0.75),
//                 style: BorderStyle.solid,
//                 width: 1,
//               )),
//           width: double.infinity,
//           child: Column(
//             children: [
//               Text(
//                 "Today Weathers Report",
//                 style: Theme.of(context).textTheme.bodyMedium?.copyWith(
//                       fontSize: 18,
//                       fontWeight: FontWeight.bold,
//                     ),
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.all(2.0),
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         const Text("Sunrise"),
//                         Text("${weather.sys?.sunrise}"),
//                       ],
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.all(2.0),
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         const Text("Sunset"),
//                         Text("${weather.sys?.sunset}"),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//         const SizedBox(
//           height: 20,
//         ),
//         Container(
//           decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(8),
//               color: Colors.white.withOpacity(0.25),
//               border: Border.all(
//                 color: Colors.white.withOpacity(0.75),
//                 style: BorderStyle.solid,
//                 width: 1,
//               )),
//           height: 100,
//           width: double.infinity,
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               Padding(
//                 padding: const EdgeInsets.all(2.0),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     const Text("Temperature"),
//                     Text("${weather.main?.temp}°C"),
//                   ],
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(2.0),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     const Text("Feels Like"),
//                     Text("${weather.main?.feelsLike}°C"),
//                   ],
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(2.0),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     const Text("Humidity"),
//                     Text("${weather.main?.humidity}%"),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//         const SizedBox(
//           height: 20,
//         ),
//         Container(
//           decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(8),
//               color: Colors.white.withOpacity(0.25),
//               border: Border.all(
//                 color: Colors.white.withOpacity(0.75),
//                 style: BorderStyle.solid,
//                 width: 1,
//               )),
//           height: 120,
//           width: double.infinity,
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               Padding(
//                 padding: const EdgeInsets.all(2.0),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     const Text(
//                       "Weather:",
//                       textAlign: TextAlign.center,
//                     ),
//                     Text(
//                       "${weather.weather?.first.description}",
//                       textAlign: TextAlign.center,
//                     ),
//                   ],
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(2.0),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     const Text(
//                       "Humidity%",
//                       textAlign: TextAlign.center,
//                     ),
//                     Text(
//                       "${weather.main?.humidity}%",
//                       textAlign: TextAlign.center,
//                     ),
//                   ],
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(2.0),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     const Text(
//                       "Wind Speed ",
//                       textAlign: TextAlign.center,
//                     ),
//                     Text(
//                       "${weather.wind?.speed} m/s",
//                       textAlign: TextAlign.center,
//                     ),
//                   ],
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(2.0),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     const Text(
//                       "Cloudiness",
//                       textAlign: TextAlign.center,
//                     ),
//                     Text(
//                       "${weather.clouds?.all}%",
//                       textAlign: TextAlign.center,
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ],
//     );
//   }
// }

