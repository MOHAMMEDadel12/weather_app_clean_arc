import 'package:dio/dio.dart';
import 'package:weather_app_clean_arc/core/utils/constance.dart';
import 'package:weather_app_clean_arc/weather/data/models/weather_model.dart';
import 'package:weather_app_clean_arc/weather/domin/entites/weather.dart';

abstract class BaseRemoteDataSource {

 Future<WeatherModel?> getWeatherByCountryName(String countryName);


}

class RemoteDataSource implements BaseRemoteDataSource {
  @override
  Future<WeatherModel?> getWeatherByCountryName(String countryName) async {
    // TODO: implement getWeatherByCountryName
    try {
      var response = await Dio().get('${AppConstance.baseUrl}/weather?q=${countryName}&appid=${AppConstance.apiKey}');
      print(response);
      return WeatherModel.fromJson(response.data);

    } catch (e) {
      print(e);
      return null ;
    }
    
  }


}