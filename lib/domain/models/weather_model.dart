class WeatherModel {
  const WeatherModel({
    required this.temperature,
    required this.city,
    required this.localtime,
    required this.condition,
    required this.icon,
  });

  final double temperature;
  final String city;
  final String localtime;
  final String condition;
  final String icon;

  WeatherModel.fromJson(Map<String, dynamic> json)
      : temperature = json['current']['temp_c'] + 0.0,
        condition = json['current']['condition']['text'],
        icon = json['current']['condition']['icon'],
        city = json['location']['name'],
        localtime = json['location']['localtime'];
}
