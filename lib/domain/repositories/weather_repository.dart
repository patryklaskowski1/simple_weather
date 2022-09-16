import 'package:simple_weather/domain/models/weather_model.dart';
import '../../data/remote_data_sources/weather_remote_data_sources.dart';

class WeatherRepository {
  WeatherRepository(this._weatherRemoteDataSources);

  final WeatherRemoteDataSources _weatherRemoteDataSources;

  Future<WeatherModel?> getWeatherModel({
    required String city,
  }) async {
    final responseData = await _weatherRemoteDataSources.getWeatherData(
      city: city,
    );

    if (responseData == null) {
      return null;
    }

    final name = responseData['location']['name'] as String;
    final temperature = (responseData['current']['temp_c'] + 0.0) as double;

    return WeatherModel(
      city: name,
      temperature: temperature,
    );
  }
}
