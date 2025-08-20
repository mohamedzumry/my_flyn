import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'settings_controller.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SettingsController());

    return Scaffold(
      appBar: AppBar(title: const Text("Settings")),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          Obx(() => SwitchListTile(
                title: const Text("Enable Notifications"),
                value: controller.notificationsEnabled.value,
                onChanged: controller.toggleNotifications,
              )),
          const Divider(),
          Obx(() => SwitchListTile(
                title: const Text("Dark Mode"),
                value: controller.darkModeEnabled.value,
                onChanged: controller.toggleDarkMode,
              )),
        ],
      ),
    );
  }
}
