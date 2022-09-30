import 'package:get/route_manager.dart';
import 'package:skincare_app/share/routes/pages.dart';
import 'package:skincare_app/views/home/home.screen.dart';
import 'package:skincare_app/views/ready/onboarding.screen.dart';
import 'package:skincare_app/views/ready/splash.2.screen.dart';
import 'package:skincare_app/views/ready/splash.screen.dart';
import 'package:skincare_app/views/signup/signup.screen.dart';

class Routers {
  static final routers = [
    GetPage(name: ROUTER_ONBOARDING, page: () => const OnboardingScreen()),
    GetPage(name: ROUTER_SPLASH, page: () => const SplashScreen()),
    GetPage(name: ROUTER_SPLASH_2, page: () => const SplashScreen2()),
    GetPage(name: ROUTER_SIGNUP, page: () => const SignUpScreen()),
    GetPage(name: ROUTER_HOME, page: () => const HomeScreen()),
  ];
}
