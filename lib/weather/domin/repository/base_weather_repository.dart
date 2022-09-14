import 'package:weather_app_clean_arc/weather/domin/entites/weather.dart';

abstract class BaseWeatherRepository {


 Future<Weather> getWeatherByCountryName(String countryName);
}