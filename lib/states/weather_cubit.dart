import 'package:apiproject/models/weather_model.dart';
import 'package:apiproject/services/weather_services.dart';
import 'package:apiproject/states/weather_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WeatherCubit extends Cubit<WeatherState> {
  WeatherCubit() : super(WeatherLoading());

  Future<void> fetchWeather(String cityName) async {
    WeatherService weatherService = WeatherService();
    emit(WeatherLoading());
    try {
      WeatherModel weatherModel =
          await weatherService.fetchWeatherInformation(cityName);
      emit(
        WeatherLoaded(weatherModel: weatherModel),
      );
    } catch (e) {
      emit(WeatherError(errorMessage: e.toString()));
    }
  }
}
