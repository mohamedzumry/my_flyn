import 'package:get/get.dart';
import 'campaign_model.dart';

class CampaignController extends GetxController {
  var campaigns = <Campaign>[].obs;

  @override
  void onInit() {
    super.onInit();
    loadCampaigns();
  }

  void loadCampaigns() {
    campaigns.assignAll([
      Campaign(
        title: "Save the Ocean",
        description: "Join the movement to reduce plastic waste in our oceans.",
        imageUrl: "https://picsum.photos/seed/ocean/1200/600",
        tags: ["F&B", "Ocean"],
      ),
      Campaign(
        title: "Plant More Trees",
        description: "Support our goal to plant 1 million trees worldwide.",
        imageUrl: "https://picsum.photos/seed/trees/1200/600",
        tags: ["F&B", "Trees"],
      ),
      Campaign(
        title: "Clean Energy Future",
        description: "Promote renewable energy and sustainable living.",
        imageUrl: "https://picsum.photos/seed/energy/1200/600",
        tags: ["F&B", "Energy"],
      ),
    ]);
  }

  void toggleBookmark(int index) {
    final current = campaigns[index];
    campaigns[index] = Campaign(
      title: current.title,
      description: current.description,
      imageUrl: current.imageUrl,
      tags: current.tags,
      isBookmarked: !current.isBookmarked,
    );
  }
}
