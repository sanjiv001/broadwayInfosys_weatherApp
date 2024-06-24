// import 'dart:convert';

// import 'package:http/http.dart' as http;
// class CurrentWeatherController {
//   Future fetchCurrentWeather() async {
//    final  response = await http.get(
//     Uri.parse(
//       "https://api.openweathermap.org/data/2.5/weather?lat=44.34&lon=10.99&appid={6afedc22ace0d39dac3e5c502d84a55d
// }"),);
// if(response.statusCode == 200){
//   final data = jsonDecode(response.body);
// return data;
// } else {
//   throw Exception("Error Fetching data");
// }
//   }
// }

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class CurrentWeatherController with ChangeNotifier {
  Future fetchCurrentWeather() async {
    final response = await http.get(
      Uri.parse(
          "https://api.openweathermap.org/data/2.5/weather?lat=44.34&lon=10.99&appid=6afedc22ace0d39dac3e5c502d84a55d"),
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      notifyListeners();
      print("data is $data");
      print("data is what");
      return data;
    } else {
      throw Exception("Error fetching data");
    }
  }
}
