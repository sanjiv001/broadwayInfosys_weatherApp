import 'package:broadwayinfosys_weatherapp/controller/current_weather_controller.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

class AppProvider {
  static final List<SingleChildWidget> listOfProvider = <SingleChildWidget>[
    Provider(create: (_) => CurrentWeatherController()),
    //Provider(create: (_)=> CurrentWeatherController()),
  ];
}
