import 'package:flutter/material.dart';
import 'package:weather_app/model/weather_model.dart';
import 'package:weather_app/services/weather_api_client.dart';
import 'package:weather_app/views/additional_info.dart';
import 'package:weather_app/views/current_weather.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  WeatherApiClient client = WeatherApiClient();
  Weather? data;

  Future<void> getData() async {
    data = await client.getcurrentWeather("Kangar");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[800],
        appBar: AppBar(
          backgroundColor: Colors.grey,
          elevation: 0,
          title:
              const Text('Weather App', style: TextStyle(color: Colors.black)),
          centerTitle: true,
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.menu),
            color: Colors.black,
          ),
        ),
        body: FutureBuilder(
          future: getData(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              return Column(
                children: [
                  const SizedBox(height: 20.0),
                  currentWeather(Icons.wb_sunny_rounded, "${data!.temp}",
                      "${data!.cityname}"),
                  const SizedBox(
                    height: 60.0,
                  ),
                  const Text(
                    "Additional Information",
                    style: TextStyle(
                        fontSize: 24.0,
                        color: Color.fromARGB(221, 0, 0, 0),
                        fontWeight: FontWeight.bold),
                  ),
                  const Divider(),
                  const SizedBox(
                    height: 20.0,
                  ),
                  additionalInfo("${data!.wind}", "${data!.humidity}",
                      "${data!.pressure}", "${data!.feelsLike}")
                ],
              );
            } else if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            return Container();
          },
        ));
  }
}
