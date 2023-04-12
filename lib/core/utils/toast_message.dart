import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../resources/color_manager.dart';



enum ToastStates {
  success,
  error,
  warning,
  normal,

}

Color chooseToastColor(ToastStates state) {
  Color color;

  switch (state) {
    case ToastStates.success:
      color = ColorManager.green;
      break;
    case ToastStates.error:
      color = ColorManager.error;
      break;
    case ToastStates.warning:
      color = Colors.amber;
      break;
    case ToastStates.normal:
      color =  Colors.grey.withOpacity(0.7);
      break;

  }

  return color;
}

void showToast({required String message, required ToastStates state,Color? textColor}) {
  Fluttertoast.cancel();
  Fluttertoast.showToast(
    msg: message,
    toastLength: Toast.LENGTH_LONG,
    gravity: ToastGravity.BOTTOM,
    backgroundColor: chooseToastColor(state),
    textColor: textColor??ColorManager.whiteColor,
    fontSize: 16.0,
  );
}