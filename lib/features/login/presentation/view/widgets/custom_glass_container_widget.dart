import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:my_gallery_app/features/login/presentation/view/widgets/custom_password_text_field.dart';

import '../../../../../core/resources/color_manager.dart';
import '../../../../../core/resources/values_manager.dart';
import '../../../../../core/utils/size_config.dart';
import 'custom_login_text.dart';
import 'custom_submit_button.dart';
import 'custom_user_name_text_field.dart';

class CustomGlassContainerWidget extends StatelessWidget {
  const CustomGlassContainerWidget({
    Key? key,

  }) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        child: ClipRRect(
            borderRadius: BorderRadius.circular(35),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 15.0, sigmaY: 15.0),
              child: Container(
                padding: const EdgeInsets.all(AppPadding.p8),
                height: 300,
                width: SizeConfig.screenWidth! * .8,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.1),
                  boxShadow: const [
                    BoxShadow(
                        color: ColorManager.lightBlackColor,
                        blurRadius: 10,
                        spreadRadius: 0,
                        offset: Offset(0,6)
                    )
                  ],
                  // gradient:  const LinearGradient(
                  //   begin: Alignment.topLeft,
                  //   end: Alignment.bottomCenter,
                  //   colors: [Colors.white60,Colors.white10]
                  // ),

                  borderRadius: BorderRadius.circular(35),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    CustomLoginText(),
                    CustomUserNameTextField(),
                    CustomPasswordTextField(),
                    CustomSubmitButton()
                  ],
                ),
              ),
            )));
  }
}





