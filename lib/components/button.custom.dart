import 'package:flutter/material.dart';
import 'package:skincare_app/share/styles/coffee.color.dart';
import 'package:skincare_app/share/utils/utils.dart';

Widget mainButton(String label, BuildContext context, VoidCallback function) {
  return InkWell(
    onTap: function,
    focusColor: CoffeeColors.light,
    child: Container(
      height: responsiveWidth(32),
      width: responsiveWidth(110),
      decoration: BoxDecoration(
        color: CoffeeColors.brandColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            label,
            style: Theme.of(context).textTheme.button,
          ),
          Icon(Icons.arrow_forward,
              size: responsiveWidth(18), color: CoffeeColors.light),
        ],
      ),
    ),
  );
}

Widget fullWidthButton(
    String label, BuildContext context, VoidCallback function) {
  return ElevatedButton(
    onPressed: function,
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.resolveWith(
        (states) {
          if (states.contains(MaterialState.disabled)) {
            return CoffeeColors.disable;
          } else if (states.contains(MaterialState.pressed)) {
            return CoffeeColors.inActive;
          } else {
            return CoffeeColors.brandColor;
          }
        },
      ),
      textStyle: MaterialStateProperty.resolveWith(
        (states) {
          if (states.contains(MaterialState.disabled)) {
            return Theme.of(context)
                .textTheme
                .button!
                .copyWith(color: CoffeeColors.light);
          } else {
            return Theme.of(context).textTheme.button;
          }
        },
      ),
      minimumSize: MaterialStateProperty.resolveWith(
          (states) => Size(getWidthDevice(), 48)),
      shape: MaterialStateProperty.resolveWith((states) =>
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(16))),
    ),
    child: Text(label),
  );
}
