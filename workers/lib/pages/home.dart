import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:workers/controllers/my_controller.dart';

class HomePage extends StatelessWidget {
  final myC = Get.put(MyController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Text Field"), actions: [
        IconButton(
          onPressed: () {
            myC.reset();
          },
          icon: Icon(Icons.refresh),
        )
      ]),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() => Text(
                  "Terjadi sesuatu sebanyak : ${myC.count}x",
                  style: TextStyle(fontSize: 25),
                )),
            SizedBox(height: 30),
            TextField(
              decoration: InputDecoration(border: OutlineInputBorder()),
              onChanged: (_) => myC.change(),
            )
          ],
        )),
      ),
    );
  }
}
