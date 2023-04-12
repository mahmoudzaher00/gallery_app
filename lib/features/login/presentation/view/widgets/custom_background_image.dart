import 'package:flutter/material.dart';

import '../../../../../core/resources/assets_manager.dart';
import '../../../../../core/utils/size_config.dart';

class CustomBackGroundImage extends StatelessWidget {
  const CustomBackGroundImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(ImageAssets.logInBackground,
        height: SizeConfig.screenHeight,
        width: SizeConfig.screenWidth,
        fit: BoxFit.fill);
  }
}