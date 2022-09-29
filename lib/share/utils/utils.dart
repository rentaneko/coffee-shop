import 'package:get/get.dart';

const DESIGN_WIDTH = 375;
const DESIGN_HEIGHT = 812;

double responsiveWidth(double value) =>
    value != 0 ? (Get.width * value) / DESIGN_WIDTH : Get.width;

double responsiveHeight(double value) =>
    value != 0 ? (Get.height * value) / DESIGN_HEIGHT : Get.height;

double getHeightDevice() => Get.height;
double getWidthDevice() => Get.width;

goTo(String? screen) => Get.toNamed(screen!);

goToAndRemoveAll(String? screen) => Get.offAllNamed(screen!);

goBack() => Get.back();

offTo(String? screen) => Get.offAndToNamed(screen!);

showSnackBar({String? title, String? content}) =>
    Get.snackbar(title!, content!);
