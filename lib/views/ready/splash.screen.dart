import 'package:flutter/material.dart';
import 'package:skincare_app/components/custom.animation.dart';
import 'package:skincare_app/share/styles/coffee.color.dart';
import 'package:skincare_app/share/utils/utils.dart';
import 'package:skincare_app/views/ready/splash.2.screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 2)).then((value) =>
        Navigator.of(context)
            .push(MySlideTopTransition(widget: const SplashScreen2())));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: CoffeeColors.light,
          width: getWidthDevice(),
          height: getHeightDevice(),
          child: Center(child: Image.asset('assets/logos/logo-1.png')),
        ),
      ),
    );
  }
}
