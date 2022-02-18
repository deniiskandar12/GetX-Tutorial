import 'package:get/get.dart';
import 'package:state_manager/models/orang.dart';

class OrangController extends GetxController {
  var orang = Orang(nama: "sumanto", umur: 50).obs;

  void changeUppercase() {
    orang.update((val) {
      orang.value.nama = orang.value.nama.toString().toUpperCase();
    });
  }
}
