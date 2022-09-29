import 'package:flutter/material.dart';
import 'package:skincare_app/components/widget.custom.dart';
import 'package:skincare_app/share/styles/coffee.color.dart';
import 'package:skincare_app/share/utils/utils.dart';
import 'package:skincare_app/views/ready/onboarding.screen.dart';
import 'package:skincare_app/views/ready/splash.2.screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: CoffeeColors.light,
          width: getWidthDevice(),
          height: getHeightDevice(),
          child: Column(
            children: [
              Image.asset('assets/logos/logo-1.png'),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MySlideTopTransition(widget: const SplashScreen2()));
                },
                child: Text('Next'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
