import 'package:flutter/material.dart';
import 'package:skincare_app/components/custom.animation.dart';
import 'package:skincare_app/share/styles/coffee.color.dart';
import 'package:skincare_app/views/signup/signup.screen.dart';

class SplashScreen2 extends StatefulWidget {
  const SplashScreen2({super.key});

  @override
  State<SplashScreen2> createState() => _SplashScreen2State();
}

class _SplashScreen2State extends State<SplashScreen2> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 1)).then((value) =>
        Navigator.of(context)
            .push(MySlideRightTransition(widget: const SignUpScreen())));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CoffeeColors.brandColor,
    );
  }
}
