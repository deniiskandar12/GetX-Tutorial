import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:navigation/pages/page_empat.dart';
import 'package:navigation/routes/route_name.dart';

class PageTiga extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Page Tiga")),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
              onPressed: () {
               Get.back();
              },
              child: Text("Back Page")),
          ElevatedButton(
              onPressed: () {
                Get.toNamed(RouteName.page_4);
              },
              child: Text("Next Page")),
        ],
      )),
    );
  }
}
