import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_manager/controllers/counter_controller.dart';
import 'package:state_manager/controllers/orang_controller.dart';
import 'package:state_manager/models/orang.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("State Manager"),
        ),
        body: Center(
            child: GetBuilder<CounterController>(
                init: CounterController(),
                builder: (controller) => Text(
                      "Angka ${controller.count}",
                      style: TextStyle(fontSize: 35),
                    ))),
        floatingActionButton: FloatingActionButton(onPressed: () {
          Get.find<CounterController>().increment();
        }),
      ),
    );
  }
}
