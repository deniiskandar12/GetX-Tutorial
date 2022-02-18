import 'package:get/get.dart';

class MyController extends GetxController {
  var count = 0.obs;

  void change() => count++;

  void reset() => count.value = 0;

  @override
  void onInit() {
    print("On Init");
    ever(count, (_) => print("dijalankan"));
    super.onInit();
  }
}
