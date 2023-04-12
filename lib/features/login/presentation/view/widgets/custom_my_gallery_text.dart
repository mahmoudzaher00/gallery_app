import 'package:flutter/material.dart';

import '../../../../../core/resources/font_manager.dart';

class CustomMyGalleryText extends StatelessWidget {
  const CustomMyGalleryText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'My \nGallery ',
      style: Theme.of(context).textTheme.titleLarge!.copyWith(
        fontSize: FontSize.s40,
      ),
      textAlign: TextAlign.center,
    );
  }
}