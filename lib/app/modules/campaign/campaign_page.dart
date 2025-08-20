import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'campaign_controller.dart';
import 'widgets/campaign_card.dart';

class CampaignPage extends StatelessWidget {
  const CampaignPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(CampaignController());

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
            onPressed: () => Get.back(),
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: kToolbarHeight + 16),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                "Campaign Matching",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 20),
            // Tabs
            const TabBar(
              labelColor: Color(0xFF7C3AED),
              unselectedLabelColor: Colors.black,
              labelStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              indicatorColor: Color(0xFF7C3AED),
              indicatorWeight: 3,
              tabs: [
                Tab(text: "Applied"),
                Tab(text: "Ongoing"),
                Tab(text: "Completed"),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  // 신청
                  Obx(() {
                    if (controller.campaigns.isEmpty) {
                      return const Center(
                        child: Text("No campaigns available"),
                      );
                    }
                    return ListView.separated(
                      padding: const EdgeInsets.all(16),
                      itemCount: controller.campaigns.length,
                      separatorBuilder: (context, index) =>
                          const SizedBox(height: 16),
                      itemBuilder: (context, index) {
                        final campaign = controller.campaigns[index];
                        return CampaignCard(campaign: campaign, onTap: () {});
                      },
                    );
                  }),
                  // Ongoing
                  const Center(child: Text("No ongoing campaigns")),
                  // Completed
                  const Center(child: Text("No completed campaigns")),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
