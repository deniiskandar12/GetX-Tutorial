import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:navigation/pages/page_tiga.dart';

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
                Get.to(PageTiga());
              },
              child: Text("Next Page")),
        ],
      )),
    );
  }
}
