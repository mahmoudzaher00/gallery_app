import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../resources/color_manager.dart';
import '../resources/font_manager.dart';
import '../resources/values_manager.dart';


class CustomTextField extends StatelessWidget {
  final TextEditingController? controller;
  final Color? fillColorTextFiled;
  final List<TextInputFormatter>? inputFormatters;
  final bool? filledColorTextFiled;
  final TextInputType? textType;
  final TextStyle? hintStyle;
  final String? hintText;
  final ValueChanged<String>? onChangedFunction;
  final FormFieldValidator<String>? validatorFunction;
  final VoidCallback? onEditingCompleteFunction;
  final FocusNode? focusNode;
  final TextInputAction? textInputAction;
  final Widget? prefixIconWidget;
  final Widget? suffixIconWidget;
  final bool? obscure;
  final double? height;
  final double? width;
  final double? vertical;
  final String? labelText;
  final TextStyle? labelStyle;
  final TextStyle? errorTextStyle;
  final  Color? cursorColor;
  final ValueChanged<String>? onFieldSubmitted;
  final Color? focusedBorder;
  final Color? enabledBorder;
  final double? widthBorder;
  final int? maxLines;
  const CustomTextField({
    Key? key,
 this.controller, this.fillColorTextFiled, this.inputFormatters, this.filledColorTextFiled, this.textType, this.hintStyle, this.hintText, this.onChangedFunction, this.validatorFunction, this.onEditingCompleteFunction, this.focusNode, this.textInputAction, this.prefixIconWidget, this.suffixIconWidget, this.obscure, this.height, this.width, this.vertical, this.labelText, this.labelStyle, this.errorTextStyle, this.cursorColor, this.onFieldSubmitted, this.focusedBorder, this.enabledBorder, this.widthBorder, this.maxLines,
  }) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      enableSuggestions: true,
      style: Theme.of(context).textTheme.titleMedium!,
      cursorColor: cursorColor??ColorManager.primaryBlue,
      keyboardType: textType ?? TextInputType.text,
      inputFormatters: inputFormatters,
      onFieldSubmitted: onFieldSubmitted,
      decoration: InputDecoration(
        hintText: hintText??'',
        errorStyle:errorTextStyle?? Theme.of(context).textTheme.titleMedium!.copyWith(color: ColorManager.error,fontSize: FontSize.s10),
        labelText: labelText,
        labelStyle: labelStyle ?? Theme.of(context).textTheme.titleMedium!.copyWith(color: ColorManager.grey, fontSize: FontSize.s10),
        hintStyle: hintStyle ?? Theme.of(context).textTheme.titleMedium!.copyWith(fontSize: FontSize.s14,fontWeight: FontWeightManager.medium,color: ColorManager.greyColor),
        fillColor: fillColorTextFiled ?? ColorManager.textFiledColor,
        filled: filledColorTextFiled  ?? true,
        prefixIcon: prefixIconWidget,
        suffixIcon: suffixIconWidget,
        contentPadding: EdgeInsets.symmetric(horizontal: AppPadding.p10, vertical: vertical??AppPadding.p12),
      ),
      onChanged: onChangedFunction,
      focusNode: focusNode,
      maxLines: maxLines??1,
      onEditingComplete: onEditingCompleteFunction,
      validator:validatorFunction,
      textInputAction: textInputAction,
      obscureText: obscure??false,

    );
  }
}

