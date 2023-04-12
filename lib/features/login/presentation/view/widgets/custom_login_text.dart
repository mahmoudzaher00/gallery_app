import 'package:flutter/material.dart';

import '../../../../../core/resources/font_manager.dart';

class CustomLoginText extends StatelessWidget {
  const CustomLoginText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'Login',
      style: Theme.of(context).textTheme.titleLarge!.copyWith(fontSize: FontSize.s20,),
      textAlign: TextAlign.center,
    );
  }
}