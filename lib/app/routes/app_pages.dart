import 'package:get/get.dart';
import 'package:my_flyn/app/notfound_page.dart';
import '../modules/campaign/campaign_page.dart';
import '../modules/profile/basic_info_page.dart';
import '../modules/profile/profile_page.dart';
import '../modules/home/home_page.dart';
import '../modules/settings/settings_page.dart';
import '../modules/profile/set_password_page.dart';
import '../splash_page.dart';

class AppPages {
  static const initial = '/home';
  static final unknownRoute = GetPage(
    name: '/notfound',
    page: () => const NotFoundPage(),
  );

  static final routes = [
    GetPage(name: '/splash', page: () => const SplashPage()),
    GetPage(name: '/home', page: () => const HomePage()),
    GetPage(name: '/campaign', page: () => const CampaignPage()),
    GetPage(name: '/profile', page: () => const ProfilePage()),
    GetPage(name: '/settings', page: () => const SettingsPage()),
    GetPage(name: '/basicinfo', page: () => const BasicInfoPage()),
    GetPage(name: '/setpassword', page: () => const SetPasswordPage()),
  ];
}
