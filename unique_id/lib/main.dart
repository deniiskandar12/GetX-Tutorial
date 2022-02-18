import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final countC = Get.put(CountController());

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Unique ID"),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetBuilder<CountController>(
                id: "hell",
                builder: (_) => Text(
                      "Angka ${countC.count}",
                      style: TextStyle(fontSize: 35),
                    )),
            GetBuilder<CountController>(
                builder: (_) => Text(
                      "Angka ${countC.count}",
                      style: TextStyle(fontSize: 35),
                    )),
          ],
        )),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            countC.increment();
          },
        ),
      ),
    );
  }
}

class CountController extends GetxController {
  var count = 0;

  void increment() {
    count++;
    update(['hell']);
  }
}
