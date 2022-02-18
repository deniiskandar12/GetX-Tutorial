import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:navigation/pages/page_dua.dart';
import 'package:navigation/pages/page_empat.dart';
import 'package:navigation/pages/page_lima.dart';
import 'package:navigation/pages/page_satu.dart';
import 'package:navigation/pages/page_tiga.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: PageSatu(),
      initialRoute: '/',
      getPages: [
        GetPage(name: '/page-1', page: ()=>PageSatu()),
        GetPage(name: '/page-2', page: ()=>PageDua()),
        GetPage(name: '/page-3', page: ()=>PageTiga()),
        GetPage(name: '/page-4', page: ()=>PageEmpat()),
        GetPage(name: '/page-5', page: ()=>PageLima()),
      ],
    );
  }
}