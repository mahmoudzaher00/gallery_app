import 'package:flutter/material.dart';

class LoginInputData{
  final textEditingUserNameController = TextEditingController();
  final textEditingPasswordController = TextEditingController();
  final GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();
}