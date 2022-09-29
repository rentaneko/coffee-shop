import 'package:get/route_manager.dart';
import 'package:skincare_app/share/routes/pages.dart';
import 'package:skincare_app/views/ready/onboarding.screen.dart';
import 'package:skincare_app/views/ready/splash.screen.dart';

class Routers {
  static final routers = [
    GetPage(name: ROUTER_ONBOARDING, page: () => const OnboardingScreen()),
    GetPage(name: ROUTER_SPLASH, page: () => const SplashScreen()),
  ];
}
