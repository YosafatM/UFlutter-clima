import 'package:clima/modules/weather_controller.dart';
import 'package:clima/routes/pages.dart';
import 'package:clima/routes/routes.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData.dark(),
      initialRoute: Routes.kLoading,
      getPages: Pages.kPages,
      initialBinding: BindingsBuilder(() => {
        Get.put(WeatherController())
      }),
    );
  }
}
