import 'package:weather_app_clean_arc/weather/domin/entites/weather.dart';
import 'package:weather_app_clean_arc/weather/domin/repository/base_weather_repository.dart';

class GetWeatherByCountryName {

    final BaseWeatherRepository weatherRepository ;

  GetWeatherByCountryName(this.weatherRepository);

 Future<Weather> execute(String countryName) async {

    return await weatherRepository.getWeatherByCountryName(countryName);
  }


}