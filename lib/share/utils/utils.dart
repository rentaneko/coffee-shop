import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:skincare_app/components/custom.animation.dart';

// ignore: constant_identifier_names
const DESIGN_WIDTH = 375;
// ignore: constant_identifier_names
const DESIGN_HEIGHT = 812;

double responsiveWidth(double value) =>
    value != 0 ? (Get.width * value) / DESIGN_WIDTH : Get.width;

double responsiveHeight(double value) =>
    value != 0 ? (Get.height * value) / DESIGN_HEIGHT : Get.height;

double getHeightDevice() => Get.height;
double getWidthDevice() => Get.width;

double responsivePercent(double value) => getWidthDevice() * value / 100;

goTo({required String screen, dynamic argument}) =>
    Get.toNamed(screen, arguments: argument);

goToAndRemoveAll({required String screen, dynamic argument}) =>
    Get.offAllNamed(screen, arguments: argument);

goBack({dynamic argument}) => Get.back(result: argument);

offTo(String screen) => Get.offAndToNamed(screen);

showSnackBar({String? title, String? content}) =>
    Get.snackbar(title!, content!);
