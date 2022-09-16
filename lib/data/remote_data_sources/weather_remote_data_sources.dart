import 'package:dio/dio.dart';

class WeatherRemoteDataSources {
  Future<Map<String, dynamic>?> getWeatherData({
    required String city,
  }) async {
    final response = await Dio().get<Map<String, dynamic>>(
        'http://api.weatherapi.com/v1/current.json?key=c359cc7fd9874ca58ce145916221609&q=$city&aqi=no');
    return response.data;
  }
}
