import 'package:flutter/material.dart';

import 'font_manager.dart';

TextStyle _getTextStyle(double fontSize, FontWeight fontWeight,String fontFamily ,Color color) {
  return TextStyle(
      fontSize: fontSize, fontFamily: fontFamily, color: color, fontWeight: fontWeight);
}

// extra light style

TextStyle getExtraLightStyle(
    {double fontSize = FontSize.s12, required Color color}) {
  return _getTextStyle(fontSize, FontWeightManager.extraLight,FontConstants.fontFamilySegoe,color);
}

// light style

TextStyle getLightStyle(
    {double fontSize = FontSize.s12, required Color color}) {
  return _getTextStyle(fontSize, FontWeightManager.light, FontConstants.fontFamilySegoe ,color);
}

// regular style

TextStyle getRegularStyle(
    {double fontSize = FontSize.s12, required Color color}) {
  return _getTextStyle(fontSize, FontWeightManager.regular,FontConstants.fontFamilySegoe ,color);
}

// medium style

TextStyle getMediumStyle(
    {double fontSize = FontSize.s12, required Color color}) {
  return _getTextStyle(fontSize, FontWeightManager.medium,FontConstants.fontFamilySegoe ,color);
}

// bold style

TextStyle getBoldStyle({double fontSize = FontSize.s12, required Color color}) {
  return _getTextStyle(fontSize, FontWeightManager.bold,FontConstants.fontFamilySegoe ,color);
}

// semi extra bold style

TextStyle getSemiBoldStyle(
    {double fontSize = FontSize.s12, required Color color}) {
  return _getTextStyle(fontSize, FontWeightManager.semiBold,FontConstants.fontFamilySegoe ,color);
}

// semi extra bold style

TextStyle getExtraBoldStyle(
    {double fontSize = FontSize.s12, required Color color}) {
  return _getTextStyle(fontSize, FontWeightManager.extraBold, FontConstants.fontFamilySegoe ,color);
}
