import 'package:flutter/material.dart';
import 'package:my_gallery_app/core/resources/styles_manager.dart';

import 'color_manager.dart';
import 'font_manager.dart';
import 'values_manager.dart';

ThemeData getApplicationTheme() {
  return ThemeData(
    // useMaterial3:true ,
    // main colors
    primaryColor: ColorManager.primaryBlue,
    primaryColorLight: ColorManager.lightBlue,
    primaryColorDark: ColorManager.red,
    disabledColor: ColorManager.whiteColor,
    // platform: TargetPlatform.iOS,
    androidOverscrollIndicator: AndroidOverscrollIndicator.stretch,

    // ripple effect color
    splashColor: ColorManager.extraLightOrange,
    // scaffold Background color
    scaffoldBackgroundColor:ColorManager.whiteColor,


    // cardview theme
    cardTheme: const CardTheme(
        color: ColorManager.whiteColor,
        shadowColor: ColorManager.cardShadow,
        elevation: AppSize.s4),
    // app bar theme
    appBarTheme: AppBarTheme(
        // systemOverlayStyle: const SystemUiOverlayStyle(
        //   statusBarColor: ColorManager.white,
        //   statusBarIconBrightness: Brightness.light,
        // ),
        color: ColorManager.whiteColor,
        elevation: AppSize.s0,
        shadowColor: ColorManager.whiteColor,
        // iconTheme: IconThemeData(color: Colors.red),
        titleTextStyle: getExtraBoldStyle(fontSize: FontSize.s16, color: ColorManager.whiteColor)
    ),
    // button theme
    buttonTheme: const ButtonThemeData(
        shape: StadiumBorder(),
        disabledColor: ColorManager.primaryBlue,
        buttonColor: ColorManager.primaryBlue,
        splashColor: ColorManager.extraLightBlue),

    // elevated button them
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            textStyle: getBoldStyle(
                color: ColorManager.whiteColor, fontSize: FontSize.s18),
            primary: ColorManager.blueColor,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(AppSize.s12)))),

    textTheme: TextTheme(
        titleLarge: getBoldStyle(color: ColorManager.textColor, fontSize: FontSize.s20),
        titleMedium: getSemiBoldStyle(color: ColorManager.textColor, fontSize: FontSize.s14,),
        // // subtitle1: getExtraBoldStyle(color: ColorManager.red, fontSize: FontSize.s20),
        // headlineLarge:getExtraBoldStyle(color: ColorManager.black, fontSize: FontSize.s16),
        // labelLarge: getSemiExtraBoldStyle(color:ColorManager.darkGrey, fontSize: FontSize.s16),
        // displayLarge: getBoldStyle(color: ColorManager.darkGrey, fontSize: FontSize.s16),
        // headlineMedium: getMediumStyle(color: ColorManager.black, fontSize: FontSize.s14),
        // titleMedium: getMediumStyle(color: ColorManager.black, fontSize: FontSize.s16),
        // titleSmall: getRegularStyle(color: ColorManager.white, fontSize: FontSize.s16),
        // bodyLarge: getRegularStyle(color: ColorManager.black),
        // bodySmall: getRegularStyle(color: ColorManager.grey),
        // bodyMedium: getRegularStyle(color: ColorManager.black, fontSize: FontSize.s12),
        // labelSmall: getBoldStyle(color: ColorManager.black, fontSize: FontSize.s12),
        // headlineSmall: getLightStyle(color: ColorManager.darkGrey, fontSize: FontSize.s12),
        // displaySmall: getExtraLightStyle(color: ColorManager.darkGrey, fontSize: FontSize.s12),
    ),

    // input decoration theme (text form field)
    inputDecorationTheme: InputDecorationTheme(
        // background color
        fillColor:ColorManager.textFiledColor ,
        filled: true,
        // content padding
        contentPadding: const EdgeInsets.all(AppPadding.p8),
        // hint style
        hintStyle: getSemiBoldStyle(color: ColorManager.greyColor, fontSize: FontSize.s14),
        labelStyle: getMediumStyle(color: ColorManager.grey, fontSize: FontSize.s14),
        errorStyle: getSemiBoldStyle(color: ColorManager.hintTextColor),

        // enabled border style

        enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: ColorManager.textFiledColor, width: AppSize.s1_5),
            borderRadius: BorderRadius.all(Radius.circular(AppSize.s24))),

        // focused border style
        focusedBorder: const OutlineInputBorder(
            borderSide:
                BorderSide(color: ColorManager.textFiledColor, width: AppSize.s1_5),
            borderRadius: BorderRadius.all(Radius.circular(AppSize.s24))),

        // error border style
        errorBorder: const OutlineInputBorder(
            borderSide:
                BorderSide(color: ColorManager.red, width: AppSize.s1_5),
            borderRadius: BorderRadius.all(Radius.circular(AppSize.s24))),
             focusColor: Colors.red,
        // focused border style
        focusedErrorBorder: const OutlineInputBorder(
            borderSide:
                BorderSide(color: ColorManager.textFiledColor, width: AppSize.s1_5),
            borderRadius: BorderRadius.all(Radius.circular(AppSize.s24)))),
    textSelectionTheme: const TextSelectionThemeData(
        cursorColor: ColorManager.primaryBlue
    ),
    // label style
  );
}
