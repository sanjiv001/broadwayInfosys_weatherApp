class WeeklyWeatherReportModel {
  double? latitude;
  double? longitude;
  double? generationtimeMs;
  int? utcOffsetSeconds;
  String? timezone;
  String? timezoneAbbreviation;
  int? elevation;
  CurrentUnits? currentUnits;
  Current? current;
  HourlyUnits? hourlyUnits;
  Hourly? hourly;
  DailyUnits? dailyUnits;
  Daily? daily;

  WeeklyWeatherReportModel(
      {this.latitude,
      this.longitude,
      this.generationtimeMs,
      this.utcOffsetSeconds,
      this.timezone,
      this.timezoneAbbreviation,
      this.elevation,
      this.currentUnits,
      this.current,
      this.hourlyUnits,
      this.hourly,
      this.dailyUnits,
      this.daily});

  WeeklyWeatherReportModel.fromJson(Map<String, dynamic> json) {
    latitude = json['latitude'];
    longitude = json['longitude'];
    generationtimeMs = json['generationtime_ms'];
    utcOffsetSeconds = json['utc_offset_seconds'];
    timezone = json['timezone'];
    timezoneAbbreviation = json['timezone_abbreviation'];
    elevation = json['elevation'];
    currentUnits = json['current_units'] != null
        ? new CurrentUnits.fromJson(json['current_units'])
        : null;
    current =
        json['current'] != null ? new Current.fromJson(json['current']) : null;
    hourlyUnits = json['hourly_units'] != null
        ? new HourlyUnits.fromJson(json['hourly_units'])
        : null;
    hourly =
        json['hourly'] != null ? new Hourly.fromJson(json['hourly']) : null;
    dailyUnits = json['daily_units'] != null
        ? new DailyUnits.fromJson(json['daily_units'])
        : null;
    daily = json['daily'] != null ? new Daily.fromJson(json['daily']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['latitude'] = this.latitude;
    data['longitude'] = this.longitude;
    data['generationtime_ms'] = this.generationtimeMs;
    data['utc_offset_seconds'] = this.utcOffsetSeconds;
    data['timezone'] = this.timezone;
    data['timezone_abbreviation'] = this.timezoneAbbreviation;
    data['elevation'] = this.elevation;
    if (this.currentUnits != null) {
      data['current_units'] = this.currentUnits!.toJson();
    }
    if (this.current != null) {
      data['current'] = this.current!.toJson();
    }
    if (this.hourlyUnits != null) {
      data['hourly_units'] = this.hourlyUnits!.toJson();
    }
    if (this.hourly != null) {
      data['hourly'] = this.hourly!.toJson();
    }
    if (this.dailyUnits != null) {
      data['daily_units'] = this.dailyUnits!.toJson();
    }
    if (this.daily != null) {
      data['daily'] = this.daily!.toJson();
    }
    return data;
  }
}

class CurrentUnits {
  String? time;
  String? interval;
  String? temperature2m;
  String? relativeHumidity2m;
  String? isDay;
  String? precipitation;
  String? rain;
  String? snowfall;
  String? cloudCover;
  String? pressureMsl;
  String? surfacePressure;
  String? windSpeed10m;
  String? windDirection10m;

  CurrentUnits(
      {this.time,
      this.interval,
      this.temperature2m,
      this.relativeHumidity2m,
      this.isDay,
      this.precipitation,
      this.rain,
      this.snowfall,
      this.cloudCover,
      this.pressureMsl,
      this.surfacePressure,
      this.windSpeed10m,
      this.windDirection10m});

  CurrentUnits.fromJson(Map<String, dynamic> json) {
    time = json['time'];
    interval = json['interval'];
    temperature2m = json['temperature_2m'];
    relativeHumidity2m = json['relative_humidity_2m'];
    isDay = json['is_day'];
    precipitation = json['precipitation'];
    rain = json['rain'];
    snowfall = json['snowfall'];
    cloudCover = json['cloud_cover'];
    pressureMsl = json['pressure_msl'];
    surfacePressure = json['surface_pressure'];
    windSpeed10m = json['wind_speed_10m'];
    windDirection10m = json['wind_direction_10m'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['time'] = this.time;
    data['interval'] = this.interval;
    data['temperature_2m'] = this.temperature2m;
    data['relative_humidity_2m'] = this.relativeHumidity2m;
    data['is_day'] = this.isDay;
    data['precipitation'] = this.precipitation;
    data['rain'] = this.rain;
    data['snowfall'] = this.snowfall;
    data['cloud_cover'] = this.cloudCover;
    data['pressure_msl'] = this.pressureMsl;
    data['surface_pressure'] = this.surfacePressure;
    data['wind_speed_10m'] = this.windSpeed10m;
    data['wind_direction_10m'] = this.windDirection10m;
    return data;
  }
}

class Current {
  String? time;
  int? interval;
  double? temperature2m;
  int? relativeHumidity2m;
  int? isDay;
  double? precipitation;
  int? rain;
  int? snowfall;
  int? cloudCover;
  double? pressureMsl;
  double? surfacePressure;
  double? windSpeed10m;
  int? windDirection10m;

  Current(
      {this.time,
      this.interval,
      this.temperature2m,
      this.relativeHumidity2m,
      this.isDay,
      this.precipitation,
      this.rain,
      this.snowfall,
      this.cloudCover,
      this.pressureMsl,
      this.surfacePressure,
      this.windSpeed10m,
      this.windDirection10m});

  Current.fromJson(Map<String, dynamic> json) {
    time = json['time'];
    interval = json['interval'];
    temperature2m = json['temperature_2m'];
    relativeHumidity2m = json['relative_humidity_2m'];
    isDay = json['is_day'];
    precipitation = json['precipitation'];
    rain = json['rain'];
    snowfall = json['snowfall'];
    cloudCover = json['cloud_cover'];
    pressureMsl = json['pressure_msl'];
    surfacePressure = json['surface_pressure'];
    windSpeed10m = json['wind_speed_10m'];
    windDirection10m = json['wind_direction_10m'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['time'] = this.time;
    data['interval'] = this.interval;
    data['temperature_2m'] = this.temperature2m;
    data['relative_humidity_2m'] = this.relativeHumidity2m;
    data['is_day'] = this.isDay;
    data['precipitation'] = this.precipitation;
    data['rain'] = this.rain;
    data['snowfall'] = this.snowfall;
    data['cloud_cover'] = this.cloudCover;
    data['pressure_msl'] = this.pressureMsl;
    data['surface_pressure'] = this.surfacePressure;
    data['wind_speed_10m'] = this.windSpeed10m;
    data['wind_direction_10m'] = this.windDirection10m;
    return data;
  }
}

class HourlyUnits {
  String? time;
  String? temperature2m;
  String? dewPoint2m;
  String? apparentTemperature;
  String? precipitation;
  String? rain;
  String? snowfall;
  String? weatherCode;
  String? pressureMsl;
  String? surfacePressure;
  String? cloudCover;
  String? cloudCoverLow;
  String? cloudCoverMid;
  String? cloudCoverHigh;
  String? visibility;
  String? windSpeed10m;
  String? windSpeed80m;
  String? windDirection10m;
  String? temperature80m;
  String? soilTemperature0cm;
  String? soilMoisture0To1cm;

  HourlyUnits(
      {this.time,
      this.temperature2m,
      this.dewPoint2m,
      this.apparentTemperature,
      this.precipitation,
      this.rain,
      this.snowfall,
      this.weatherCode,
      this.pressureMsl,
      this.surfacePressure,
      this.cloudCover,
      this.cloudCoverLow,
      this.cloudCoverMid,
      this.cloudCoverHigh,
      this.visibility,
      this.windSpeed10m,
      this.windSpeed80m,
      this.windDirection10m,
      this.temperature80m,
      this.soilTemperature0cm,
      this.soilMoisture0To1cm});

  HourlyUnits.fromJson(Map<String, dynamic> json) {
    time = json['time'];
    temperature2m = json['temperature_2m'];
    dewPoint2m = json['dew_point_2m'];
    apparentTemperature = json['apparent_temperature'];
    precipitation = json['precipitation'];
    rain = json['rain'];
    snowfall = json['snowfall'];
    weatherCode = json['weather_code'];
    pressureMsl = json['pressure_msl'];
    surfacePressure = json['surface_pressure'];
    cloudCover = json['cloud_cover'];
    cloudCoverLow = json['cloud_cover_low'];
    cloudCoverMid = json['cloud_cover_mid'];
    cloudCoverHigh = json['cloud_cover_high'];
    visibility = json['visibility'];
    windSpeed10m = json['wind_speed_10m'];
    windSpeed80m = json['wind_speed_80m'];
    windDirection10m = json['wind_direction_10m'];
    temperature80m = json['temperature_80m'];
    soilTemperature0cm = json['soil_temperature_0cm'];
    soilMoisture0To1cm = json['soil_moisture_0_to_1cm'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['time'] = this.time;
    data['temperature_2m'] = this.temperature2m;
    data['dew_point_2m'] = this.dewPoint2m;
    data['apparent_temperature'] = this.apparentTemperature;
    data['precipitation'] = this.precipitation;
    data['rain'] = this.rain;
    data['snowfall'] = this.snowfall;
    data['weather_code'] = this.weatherCode;
    data['pressure_msl'] = this.pressureMsl;
    data['surface_pressure'] = this.surfacePressure;
    data['cloud_cover'] = this.cloudCover;
    data['cloud_cover_low'] = this.cloudCoverLow;
    data['cloud_cover_mid'] = this.cloudCoverMid;
    data['cloud_cover_high'] = this.cloudCoverHigh;
    data['visibility'] = this.visibility;
    data['wind_speed_10m'] = this.windSpeed10m;
    data['wind_speed_80m'] = this.windSpeed80m;
    data['wind_direction_10m'] = this.windDirection10m;
    data['temperature_80m'] = this.temperature80m;
    data['soil_temperature_0cm'] = this.soilTemperature0cm;
    data['soil_moisture_0_to_1cm'] = this.soilMoisture0To1cm;
    return data;
  }
}

class Hourly {
  List<String>? time;
  List<double>? temperature2m;
  List<double>? dewPoint2m;
  List<double>? apparentTemperature;
  List<int>? precipitation;
  List<int>? rain;
  List<int>? snowfall;
  List<int>? weatherCode;
  List<double>? pressureMsl;
  List<double>? surfacePressure;
  List<int>? cloudCover;
  List<int>? cloudCoverLow;
  List<int>? cloudCoverMid;
  List<int>? cloudCoverHigh;
  List<int>? visibility;
  List<double>? windSpeed10m;
  List<double>? windSpeed80m;
  List<int>? windDirection10m;
  List<double>? temperature80m;
  List<int>? soilTemperature0cm;
  List<double>? soilMoisture0To1cm;

  Hourly(
      {this.time,
      this.temperature2m,
      this.dewPoint2m,
      this.apparentTemperature,
      this.precipitation,
      this.rain,
      this.snowfall,
      this.weatherCode,
      this.pressureMsl,
      this.surfacePressure,
      this.cloudCover,
      this.cloudCoverLow,
      this.cloudCoverMid,
      this.cloudCoverHigh,
      this.visibility,
      this.windSpeed10m,
      this.windSpeed80m,
      this.windDirection10m,
      this.temperature80m,
      this.soilTemperature0cm,
      this.soilMoisture0To1cm});

  Hourly.fromJson(Map<String, dynamic> json) {
    time = json['time'].cast<String>();
    temperature2m = json['temperature_2m'].cast<double>();
    dewPoint2m = json['dew_point_2m'].cast<double>();
    apparentTemperature = json['apparent_temperature'].cast<double>();
    precipitation = json['precipitation'].cast<int>();
    rain = json['rain'].cast<int>();
    snowfall = json['snowfall'].cast<int>();
    weatherCode = json['weather_code'].cast<int>();
    pressureMsl = json['pressure_msl'].cast<double>();
    surfacePressure = json['surface_pressure'].cast<double>();
    cloudCover = json['cloud_cover'].cast<int>();
    cloudCoverLow = json['cloud_cover_low'].cast<int>();
    cloudCoverMid = json['cloud_cover_mid'].cast<int>();
    cloudCoverHigh = json['cloud_cover_high'].cast<int>();
    visibility = json['visibility'].cast<int>();
    windSpeed10m = json['wind_speed_10m'].cast<double>();
    windSpeed80m = json['wind_speed_80m'].cast<double>();
    windDirection10m = json['wind_direction_10m'].cast<int>();
    temperature80m = json['temperature_80m'].cast<double>();
    soilTemperature0cm = json['soil_temperature_0cm'].cast<int>();
    soilMoisture0To1cm = json['soil_moisture_0_to_1cm'].cast<double>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['time'] = this.time;
    data['temperature_2m'] = this.temperature2m;
    data['dew_point_2m'] = this.dewPoint2m;
    data['apparent_temperature'] = this.apparentTemperature;
    data['precipitation'] = this.precipitation;
    data['rain'] = this.rain;
    data['snowfall'] = this.snowfall;
    data['weather_code'] = this.weatherCode;
    data['pressure_msl'] = this.pressureMsl;
    data['surface_pressure'] = this.surfacePressure;
    data['cloud_cover'] = this.cloudCover;
    data['cloud_cover_low'] = this.cloudCoverLow;
    data['cloud_cover_mid'] = this.cloudCoverMid;
    data['cloud_cover_high'] = this.cloudCoverHigh;
    data['visibility'] = this.visibility;
    data['wind_speed_10m'] = this.windSpeed10m;
    data['wind_speed_80m'] = this.windSpeed80m;
    data['wind_direction_10m'] = this.windDirection10m;
    data['temperature_80m'] = this.temperature80m;
    data['soil_temperature_0cm'] = this.soilTemperature0cm;
    data['soil_moisture_0_to_1cm'] = this.soilMoisture0To1cm;
    return data;
  }
}

class DailyUnits {
  String? time;
  String? temperature2mMax;
  String? temperature2mMin;
  String? sunrise;
  String? sunset;
  String? daylightDuration;
  String? sunshineDuration;
  String? uvIndexMax;
  String? rainSum;
  String? windSpeed10mMax;

  DailyUnits(
      {this.time,
      this.temperature2mMax,
      this.temperature2mMin,
      this.sunrise,
      this.sunset,
      this.daylightDuration,
      this.sunshineDuration,
      this.uvIndexMax,
      this.rainSum,
      this.windSpeed10mMax});

  DailyUnits.fromJson(Map<String, dynamic> json) {
    time = json['time'];
    temperature2mMax = json['temperature_2m_max'];
    temperature2mMin = json['temperature_2m_min'];
    sunrise = json['sunrise'];
    sunset = json['sunset'];
    daylightDuration = json['daylight_duration'];
    sunshineDuration = json['sunshine_duration'];
    uvIndexMax = json['uv_index_max'];
    rainSum = json['rain_sum'];
    windSpeed10mMax = json['wind_speed_10m_max'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['time'] = this.time;
    data['temperature_2m_max'] = this.temperature2mMax;
    data['temperature_2m_min'] = this.temperature2mMin;
    data['sunrise'] = this.sunrise;
    data['sunset'] = this.sunset;
    data['daylight_duration'] = this.daylightDuration;
    data['sunshine_duration'] = this.sunshineDuration;
    data['uv_index_max'] = this.uvIndexMax;
    data['rain_sum'] = this.rainSum;
    data['wind_speed_10m_max'] = this.windSpeed10mMax;
    return data;
  }
}

class Daily {
  List<String>? time;
  List<double>? temperature2mMax;
  List<double>? temperature2mMin;
  List<String>? sunrise;
  List<String>? sunset;
  List<double>? daylightDuration;
  List<double>? sunshineDuration;
  List<double>? uvIndexMax;
  List<int>? rainSum;
  List<double>? windSpeed10mMax;

  Daily(
      {this.time,
      this.temperature2mMax,
      this.temperature2mMin,
      this.sunrise,
      this.sunset,
      this.daylightDuration,
      this.sunshineDuration,
      this.uvIndexMax,
      this.rainSum,
      this.windSpeed10mMax});

  Daily.fromJson(Map<String, dynamic> json) {
    time = json['time'].cast<String>();
    temperature2mMax = json['temperature_2m_max'].cast<double>();
    temperature2mMin = json['temperature_2m_min'].cast<double>();
    sunrise = json['sunrise'].cast<String>();
    sunset = json['sunset'].cast<String>();
    daylightDuration = json['daylight_duration'].cast<double>();
    sunshineDuration = json['sunshine_duration'].cast<double>();
    uvIndexMax = json['uv_index_max'].cast<double>();
    rainSum = json['rain_sum'].cast<int>();
    windSpeed10mMax = json['wind_speed_10m_max'].cast<double>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['time'] = this.time;
    data['temperature_2m_max'] = this.temperature2mMax;
    data['temperature_2m_min'] = this.temperature2mMin;
    data['sunrise'] = this.sunrise;
    data['sunset'] = this.sunset;
    data['daylight_duration'] = this.daylightDuration;
    data['sunshine_duration'] = this.sunshineDuration;
    data['uv_index_max'] = this.uvIndexMax;
    data['rain_sum'] = this.rainSum;
    data['wind_speed_10m_max'] = this.windSpeed10mMax;
    return data;
  }
}
