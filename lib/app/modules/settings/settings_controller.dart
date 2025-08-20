import 'package:get/get.dart';

class SettingsController extends GetxController {
  var notificationsEnabled = true.obs;
  var darkModeEnabled = false.obs;

  void toggleNotifications(bool value) {
    notificationsEnabled.value = value;
  }

  void toggleDarkMode(bool value) {
    darkModeEnabled.value = value;
  }
}
