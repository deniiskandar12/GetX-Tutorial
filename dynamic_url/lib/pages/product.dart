import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("All Page"),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
              onPressed: () => Get.toNamed('/product/1'),
              child: Text("Products 1")),
          ElevatedButton(
              onPressed: () => Get.toNamed('/product/2'),
              child: Text("Products 2")),
          ElevatedButton(
              onPressed: () => Get.toNamed('/product/3'),
              child: Text("Products 3")),
        ],
      )),
    );
  }
}
