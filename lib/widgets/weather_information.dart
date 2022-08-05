import 'package:apiproject/models/weather_model.dart';
import 'package:flutter/material.dart';

class WeatherInformation extends StatelessWidget {
  const WeatherInformation({required this.weatherModel, Key? key})
      : super(key: key);

  final WeatherModel weatherModel;
  @override
  Widget build(BuildContext context) {
    return Card(
        color: Colors.teal.shade50,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: Colors.black12,
            width: 6, //<-- SEE HERE
          ),
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Icon(
              Icons.wb_sunny,
              color: Colors.yellow,
              size: 80.0,
            ),
            const SizedBox(height: 10),
            Text(
              'THE WEATHER TEMPERATURE:\n',
              style: TextStyle(
                decoration: TextDecoration.underline,
                fontSize: 20,
                fontWeight: FontWeight.bold,
                shadows: [
                  Shadow(
                    color: Colors.black12,
                    blurRadius: 10.0,
                    offset: Offset(-8.0, 5.0),
                  ),
                ],
              ),
              textAlign: TextAlign.center,
            ),
            Container(
              child: Text(
                '${weatherModel.main.temp}°C',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 30),
              ),
            ),
            const SizedBox(height: 10),
            Text(
              'THE STATE NAME:\n',
              style: TextStyle(
                decoration: TextDecoration.underline,
                fontSize: 20,
                fontWeight: FontWeight.bold,
                shadows: [
                  Shadow(
                    color: Colors.black12,
                    blurRadius: 10.0,
                    offset: Offset(-8.0, 5.0),
                  ),
                ],
              ),
              textAlign: TextAlign.center,
            ),
            Text(
              '${weatherModel.name}',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 30),
            ),
            const SizedBox(height: 10),
            Text(
              'THE WEATHER DESCRIPTION:\n',
              style: TextStyle(
                decoration: TextDecoration.underline,
                fontSize: 20,
                fontWeight: FontWeight.bold,
                shadows: [
                  Shadow(
                    color: Colors.black12,
                    blurRadius: 10.0,
                    offset: Offset(-8.0, 5.0),
                  ),
                ],
              ),
              textAlign: TextAlign.center,
            ),
            Text(
              '${weatherModel.weather.first.description}',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30,
              ),
            )
          ],
        ));
  }
}
