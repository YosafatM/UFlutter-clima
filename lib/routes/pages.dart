import 'package:clima/routes/routes.dart';
import 'package:clima/modules/city/city_screen.dart';
import 'package:clima/modules/loading/loading_screen.dart';
import 'package:clima/modules/location/location_screen.dart';
import 'package:get/get.dart';

class Pages {
  static final kPages = <GetPage>[
    GetPage(
      name: Routes.kLoading,
      page: () => LoadingScreen()
    ),
    GetPage(
      name: Routes.kCity,
      page: () => CityScreen(),
    ),
    GetPage(
      name: Routes.kLocation,
      page: () => LocationScreen(),
    ),
  ];
}