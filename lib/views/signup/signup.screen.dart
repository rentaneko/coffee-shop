import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:skincare_app/components/button.custom.dart';
import 'package:skincare_app/share/routes/pages.dart';
import 'package:skincare_app/share/styles/coffee.color.dart';
import 'package:skincare_app/share/utils/utils.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          height: getHeightDevice(),
          width: getWidthDevice(),
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: responsiveWidth(24)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset('assets/logos/logo-1.png'),
                  SizedBox(height: responsiveHeight(42)),
                  Text('Username',
                      style: Theme.of(context).textTheme.headline2),
                  SizedBox(height: responsiveHeight(12)),
                  TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide: BorderSide(color: CoffeeColors.disable),
                      ),
                      hintText: 'Input your username',
                      contentPadding: EdgeInsets.symmetric(
                          vertical: responsiveHeight(16),
                          horizontal: responsiveWidth(12)),
                    ),
                  ),
                  SizedBox(height: responsiveHeight(24)),
                  Text('Password',
                      style: Theme.of(context).textTheme.headline2),
                  SizedBox(height: responsiveHeight(12)),
                  TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide: BorderSide(color: CoffeeColors.disable),
                      ),
                      hintText: 'Input your password',
                      contentPadding: EdgeInsets.symmetric(
                          vertical: responsiveHeight(16),
                          horizontal: responsiveWidth(12)),
                    ),
                  ),
                  SizedBox(height: responsiveHeight(24)),
                  RichText(
                    text: TextSpan(
                      text: 'By tapping "Resgister" you agree to our ',
                      children: [
                        TextSpan(
                          text: 'Terms of Use',
                          style: Theme.of(context)
                              .textTheme
                              .headline3!
                              .copyWith(
                                  fontSize: responsiveHeight(14),
                                  decoration: TextDecoration.underline),
                          recognizer: TapGestureRecognizer()..onTap = () {},
                        ),
                        TextSpan(
                          text: ' and ',
                          style: Theme.of(context)
                              .textTheme
                              .headline2!
                              .copyWith(fontSize: responsiveHeight(14)),
                        ),
                        TextSpan(
                          text: 'Privacy Policy',
                          style: Theme.of(context)
                              .textTheme
                              .headline3!
                              .copyWith(
                                  fontSize: responsiveHeight(14),
                                  decoration: TextDecoration.underline),
                          recognizer: TapGestureRecognizer()..onTap = () {},
                        ),
                      ],
                      style: Theme.of(context)
                          .textTheme
                          .headline2!
                          .copyWith(fontSize: responsiveHeight(14)),
                    ),
                  ),
                  SizedBox(height: responsiveHeight(32)),
                  fullWidthButton('Register', context, () {
                    goTo(screen: ROUTER_HOME);
                  }),
                ],
              ),
            ),
          ),
        ),
      ),
      bottomSheet: Padding(
        padding: EdgeInsets.only(bottom: responsiveHeight(12)),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {},
              child: Text(
                'Have an account? Login here!',
                style: Theme.of(context)
                    .textTheme
                    .headline1!
                    .copyWith(fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
