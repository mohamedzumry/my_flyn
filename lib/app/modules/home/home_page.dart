import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Top section: Greeting (left) and Image (right)
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Greeting on the left with padding at top
                Padding(
                  padding: const EdgeInsets.only(top: 32.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Hello',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 4.0),
                      Text(
                        'Mr. Hong',
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      ),
                    ],
                  ),
                ),
                // Image on the right
                Padding(
                  padding: const EdgeInsets.only(top: 24.0),
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Get.snackbar('Tap', 'Image registration tapped');
                        },
                        child: Container(
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.grey[300],
                          ),
                          child: const Icon(
                            Icons.camera_alt,
                            size: 50,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      const SizedBox(height: 8.0),
                      const Text('Register Image'),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 24.0),

            // Application Status Section
            Card(
              elevation: 2.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    // My Campaign row
                    InkWell(
                      onTap: () {
                        Get.toNamed('/campaign');
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'My Campaign',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const Icon(Icons.arrow_forward_ios, size: 18),
                        ],
                      ),
                    ),
                    const SizedBox(height: 16.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        _buildStatusColumn('Applied', 0),
                        _buildStatusColumn('In Progress', 5),
                        _buildStatusColumn('Completed', 10),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 24.0),

            // Menu Items
            _buildMenuItem(Icons.person_outline, 'My Info'),
            _buildMenuItem(Icons.notifications_none, 'Notice'),
            const Divider(height: 1),
            _buildMenuItem(Icons.help_outline, '1:1 Inquiry'),
            const Divider(height: 1),
            _buildMenuItem(Icons.question_answer_outlined, 'FAQ'),
            const Divider(height: 1),
            _buildMenuItem(Icons.description_outlined, 'Terms & Policy'),
            const Divider(height: 1),
            _buildMenuItem(Icons.logout, 'Logout'),
            const Divider(height: 1),
            _buildMenuItem(Icons.person_remove_outlined, 'Withdraw Membership'),
          ],
        ),
      ),
    );
  }

  Widget _buildStatusColumn(String title, int count) {
    return Expanded(
      child: InkWell(
        onTap: () {
          Get.snackbar('Tap', '$title tapped');
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              '$count',
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Color(0xFF7C3AED), // Purple
              ),
            ),
            const SizedBox(height: 4.0),
            Text(
              title,
              style: const TextStyle(fontSize: 15, color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMenuItem(IconData icon, String title) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            if (title == 'My Info') {
              Get.toNamed('/profile');
            } else if (title == 'Notice') {
              Get.toNamed('/notice');
            } else if (title == '1:1 Inquiry') {
              Get.toNamed('/inquiry');
            } else if (title == 'FAQ') {
              Get.toNamed('/faq');
            } else if (title == 'Terms & Policy') {
              Get.toNamed('/terms');
            } else if (title == 'Logout') {
              Get.toNamed('/logout');
            } else if (title == 'Withdraw Membership') {
              Get.toNamed('/withdraw');
            }
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 12.0),
            child: Row(
              children: [
                Icon(icon),
                const SizedBox(width: 16.0),
                Expanded(
                  child: Text(title, style: const TextStyle(fontSize: 16)),
                ),
                const Icon(Icons.arrow_forward_ios, size: 16),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
