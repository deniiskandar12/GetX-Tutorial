import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:navigation/pages/page_tiga.dart';
import 'package:navigation/routes/route_name.dart';

class PageDua extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Page Dua")),
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
                Get.toNamed(RouteName.page_3);
              },
              child: Text("Next Page")),
        ],
      )),
    );
  }
}
