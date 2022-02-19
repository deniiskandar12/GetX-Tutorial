import 'package:get/get.dart';
import 'package:navigation/pages/page_satu.dart';
import 'package:navigation/pages/page_dua.dart';
import 'package:navigation/pages/page_empat.dart';
import 'package:navigation/pages/page_lima.dart';
import 'package:navigation/pages/page_tiga.dart';
import 'package:navigation/routes/route_name.dart';

class AppPage{
  static final pages = [
        GetPage(name: RouteName.page_1, page: ()=>PageSatu()),
        GetPage(name: RouteName.page_2, page: ()=>PageDua()),
        GetPage(name: RouteName.page_3, page: ()=>PageTiga()),
        GetPage(name: RouteName.page_4, page: ()=>PageEmpat()),
        GetPage(name: RouteName.page_5, page: ()=>PageLima()),
      ];
}