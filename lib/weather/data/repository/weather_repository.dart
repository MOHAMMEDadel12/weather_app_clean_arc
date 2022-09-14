import 'package:weather_app_clean_arc/weather/data/datasource/remote_datasource.dart';
import 'package:weather_app_clean_arc/weather/domin/entites/weather.dart';
import 'package:weather_app_clean_arc/weather/domin/repository/base_weather_repository.dart';

class WeaterRepository implements BaseWeatherRepository {

 final BaseRemoteDataSource baseRemoteDataSource ;

  WeaterRepository(this.baseRemoteDataSource);

  @override
  Future<Weather> getWeatherByCountryName(String countryName) async {
    // TODO: implement getWeatherByCountryName
   return (await baseRemoteDataSource.getWeatherByCountryName(countryName))!;
  }


}