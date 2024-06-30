import 'package:broadwayinfosys_weatherapp/controller/current_weather_controller.dart';
import 'package:broadwayinfosys_weatherapp/controller/weekly_weather_report_controller.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

class AppProvider {
  static final List<SingleChildWidget> listOfProvider = <SingleChildWidget>[
    Provider(create: (_) => CurrentWeatherController()..currentWeather),
    Provider(create: (_) => WeeklyWeatherController()..weeklyWeatherReport),
  ];
}
