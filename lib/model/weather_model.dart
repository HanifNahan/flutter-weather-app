class Weather {
  String? cityname;
  double? temp;
  double? wind;
  int? humidity;
  double? feelsLike;
  int? pressure;

  Weather(
      {this.cityname,
      this.temp,
      this.wind,
      this.humidity,
      this.feelsLike,
      this.pressure});

  Weather.fromJson(Map<String, dynamic> json) {
    cityname = json["name"];
    temp = json["main"]["temp"];
    wind = json["wind"]["speed"];
    pressure = json["main"]["pressure"];
    humidity = json["main"]["humidity"];
    feelsLike = json["main"]["feels_like"];
  }
}
