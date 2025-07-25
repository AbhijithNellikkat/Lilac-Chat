import 'package:get/get.dart';
import 'package:lilac_chat/application/controllers/auth/auth_controller.dart';
import 'package:lilac_chat/application/controllers/internet/internet_connection.dart';

class AllControllerBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(InternetConnectionController(), permanent: true);
    Get.put(AuthController(), permanent: true);
  }
}
