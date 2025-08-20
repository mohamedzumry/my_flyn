import 'package:get/get.dart';

class ProfileController extends GetxController {
  var userName = "John Doe".obs;
  var email = "john.doe@example.com".obs;

  void updateEmail(String newEmail) {
    email.value = newEmail;
  }
}
