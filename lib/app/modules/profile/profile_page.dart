import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () => Get.back(),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.fromLTRB(16, 24, 16, 16),
            child: Text(
              'My Info',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          Divider(height: 1),
          _buildMenuItem('Basic Info'),
          Divider(height: 1),
          _buildMenuItem('Set Password'),
          Divider(height: 1),
          _buildMenuItem('Interest Category'),
          Divider(height: 1),
        ],
      ),
    );
  }

  Widget _buildMenuItem(String title) {
    return InkWell(
      onTap: () {
        if (title == 'Basic Info') {
          Get.toNamed('/basicinfo');
        } else if (title == 'Set Password') {
          Get.toNamed('/setpassword');
        } else {}
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(title, style: const TextStyle(fontSize: 16)),
            const Icon(Icons.arrow_forward_ios, size: 18, color: Colors.grey),
          ],
        ),
      ),
    );
  }
}

// ...existing code...
