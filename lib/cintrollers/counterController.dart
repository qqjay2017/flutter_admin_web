import 'package:get/get.dart';

class CounterCountrooler extends GetxController {
  var counter = 0.obs;

  void increment() {
    counter++;
  }
}
