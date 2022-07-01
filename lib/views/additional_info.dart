import 'package:flutter/material.dart';

TextStyle titlefont =
    const TextStyle(fontWeight: FontWeight.w600, fontSize: 18.0);
TextStyle infofont =
    const TextStyle(fontWeight: FontWeight.w400, fontSize: 18.0);

Widget additionalInfo(
    String wind, String humidity, String pressure, String feelsLike) {
  return Container(
    width: double.infinity,
    padding: const EdgeInsets.all(18.0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Wind",
                  style: titlefont,
                ),
                const SizedBox(
                  height: 18.0,
                ),
                Text(
                  "Pressure",
                  style: titlefont,
                ),
                const SizedBox(
                  height: 18.0,
                ),
                Text(
                  "Humidity",
                  style: titlefont,
                ),
                const SizedBox(
                  height: 18.0,
                ),
                Text(
                  "Feels Like",
                  style: titlefont,
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  wind,
                  style: infofont,
                ),
                const SizedBox(
                  height: 18.0,
                ),
                Text(
                  pressure,
                  style: infofont,
                ),
                const SizedBox(
                  height: 18.0,
                ),
                Text(
                  humidity,
                  style: infofont,
                ),
                const SizedBox(
                  height: 18.0,
                ),
                Text(
                  feelsLike,
                  style: infofont,
                )
              ],
            )
          ],
        )
      ],
    ),
  );
}
