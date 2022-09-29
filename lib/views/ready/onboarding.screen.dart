import 'package:flutter/material.dart';
import 'package:skincare_app/components/button.custom.dart';
import 'package:skincare_app/components/widget.custom.dart';
import 'package:skincare_app/repository/data/dumb.data.dart';
import 'package:skincare_app/share/utils/utils.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  late PageController _pageController;
  int _pageIndex = 0;

  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: getHeightDevice(),
          width: getWidthDevice(),
          color: Colors.white,
          child: Column(
            children: [
              Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: EdgeInsets.only(right: responsiveWidth(8)),
                  child: TextButton(
                    onPressed: () => setState(() {
                      _pageIndex = OnboardData.demoOnboard.length - 1;
                      _pageController
                          .jumpToPage(OnboardData.demoOnboard.length - 1);
                    }),
                    child: Text('Skip',
                        style: Theme.of(context).textTheme.headline2),
                  ),
                ),
              ),
              Expanded(
                child: PageView.builder(
                  controller: _pageController,
                  itemCount: OnboardData.demoOnboard.length,
                  onPageChanged: (index) => setState(() => _pageIndex = index),
                  itemBuilder: (context, index) => OnboardContent(
                      image: OnboardData.demoOnboard[index].image,
                      title: OnboardData.demoOnboard[index].title,
                      description: OnboardData.demoOnboard[index].description),
                ),
              ),
              Row(
                children: [
                  ...List.generate(
                    OnboardData.demoOnboard.length,
                    (index) => Padding(
                      padding: EdgeInsets.only(left: responsiveWidth(12)),
                      child: LineIndicator(isActive: index == _pageIndex),
                    ),
                  ),
                  const Spacer(),
                  Padding(
                    padding: EdgeInsets.only(right: responsiveWidth(12)),
                    child: _pageIndex == OnboardData.demoOnboard.length - 1
                        ? mainButton('Let go', context, () {})
                        : mainButton('Next', context, () {
                            _pageController.nextPage(
                                duration: const Duration(milliseconds: 300),
                                curve: Curves.linear);
                          }),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
