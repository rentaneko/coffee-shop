import 'package:flutter/material.dart';
import 'package:skincare_app/share/styles/coffee.color.dart';
import 'package:skincare_app/share/utils/utils.dart';

class OnboardContent extends StatelessWidget {
  OnboardContent({
    Key? key,
    required this.image,
    required this.title,
    required this.description,
  }) : super(key: key);
  final String image;
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: responsiveWidth(22)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Spacer(),
          Padding(
            padding: EdgeInsets.only(right: responsiveWidth(40)),
            child: Image.asset(image),
          ),
          const Spacer(),
          Text(
            title,
            style: Theme.of(context).textTheme.headline1,
            textAlign: TextAlign.center,
          ),
          const Spacer(),
          Text(
            description,
            style: Theme.of(context).textTheme.bodyText1,
            textAlign: TextAlign.center,
          ),
          const Spacer(),
        ],
      ),
    );
  }
}

class LineIndicator extends StatelessWidget {
  const LineIndicator({Key? key, this.isActive = false}) : super(key: key);
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: responsiveHeight(6),
      width: responsiveWidth(35),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color:
            isActive == false ? CoffeeColors.disable : CoffeeColors.brandColor,
      ),
    );
  }
}

class MySlideTopTransition extends PageRouteBuilder {
  final Widget widget;
  MySlideTopTransition({required this.widget})
      : super(pageBuilder: (BuildContext context, Animation<double> animation,
            Animation<double> secondaryAnimation) {
          return widget;
        }, transitionsBuilder: (BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child) {
          return SlideTransition(
            position: Tween<Offset>(
              begin: const Offset(0.0, -1.0),
              end: Offset.zero,
            ).animate(animation),
            child: child,
          );
        });
}
