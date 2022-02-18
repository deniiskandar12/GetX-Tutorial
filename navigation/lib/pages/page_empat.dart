import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:navigation/pages/page_lima.dart';

class PageEmpat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Page Empat")),
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
                Get.offAll(PageLima());
              },
              child: Text("Next Page")),
        ],
      )),
    );
  }
}
