import 'package:flutter/material.dart';
import 'package:flutter_web_dashboard/cintrollers/counterController.dart';
import 'package:get/get.dart';

class OtherScreen extends StatelessWidget {
  OtherScreen({Key? key}) : super(key: key);
  final CounterCountrooler _counterCountrooler = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                  child: Text(
                      "screen was click ${_counterCountrooler.counter.value}")),
              SizedBox(
                height: 10,
              ),
              Center(
                child: ElevatedButton(
                    onPressed: () {
                      Get.back();
                    },
                    child: Text('back')),
              )
            ],
          )),
    );
  }
}
