import 'dart:convert';

import 'package:broadwayinfosys_weatherapp/model/weekly_weather_report_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
// Import the model

class WeeklyWeatherController with ChangeNotifier {
  WeeklyWeatherReportModel? weeklyWeatherReport;

  Future<WeeklyWeatherReportModel?> fetchWeeklyWeather() async {
    final response = await http.get(
      Uri.parse(
          "https://api.open-meteo.com/v1/forecast?latitude=27.7017&longitude=85.3206&current=temperature_2m,relative_humidity_2m,is_day,precipitation,rain,snowfall,cloud_cover,pressure_msl,surface_pressure,wind_speed_10m,wind_direction_10m&hourly=temperature_2m,dew_point_2m,apparent_temperature,precipitation,rain,snowfall,weather_code,pressure_msl,surface_pressure,cloud_cover,cloud_cover_low,cloud_cover_mid,cloud_cover_high,visibility,wind_speed_10m,wind_speed_80m,wind_direction_10m,temperature_80m,soil_temperature_0cm,soil_moisture_0_to_1cm&daily=temperature_2m_max,temperature_2m_min,sunrise,sunset,daylight_duration,sunshine_duration,uv_index_max,rain_sum,wind_speed_10m_max&past_days=31&forecast_days=14"),
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      weeklyWeatherReport = WeeklyWeatherReportModel.fromJson(data);

      notifyListeners();
    } else {
      throw Exception("Error fetching data");
    }
    return weeklyWeatherReport;
  }
}
