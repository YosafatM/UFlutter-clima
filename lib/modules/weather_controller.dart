import 'package:clima/routes/routes.dart';
import 'package:clima/services/weather.dart';

import 'package:get/get.dart';

class WeatherController extends GetxController {
  Rx<int> number = 0.obs;
  Rx<int> temp = 0.obs;
  Rx<String> city = '???'.obs;
  String query = '';

  @override
  void onInit() {
    super.onInit();
    retrieveData(firstTime: true);
  }

  void retrieveData({firstTime=false, fromQuery=false}) async {
    dynamic data = fromQuery ?
        await WeatherModel.getDataFromCity(query) :
        await WeatherModel.getData();

    number.value = data['weather'][0]['id'];
    temp.value = data['main']['temp'].toInt();
    city.value = data['name'];

    if (firstTime) Get.offAndToNamed(Routes.kLocation);
    if (fromQuery) Get.back();
  }


}