import 'package:flutter/material.dart';
import 'package:skincare_app/share/styles/coffee.color.dart';
import 'package:skincare_app/share/utils/utils.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: getHeightDevice(),
          width: getWidthDevice(),
          color: CoffeeColors.light,
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: responsiveWidth(16),
                vertical: responsiveHeight(12),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: responsiveHeight(44),
                        width: responsiveWidth(291),
                        decoration: BoxDecoration(
                          color: CoffeeColors.medium,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      Container(
                        height: responsiveHeight(30),
                        width: responsiveWidth(30),
                        decoration: BoxDecoration(
                          color: CoffeeColors.medium,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: responsiveHeight(20)),
                  Container(
                    height: responsiveHeight(121),
                    width: getWidthDevice(),
                    decoration: BoxDecoration(
                      color: CoffeeColors.medium,
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  SizedBox(height: responsiveHeight(28)),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
