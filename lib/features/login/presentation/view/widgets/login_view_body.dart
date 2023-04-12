
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_gallery_app/core/app/service_locator.dart';
import 'package:my_gallery_app/core/utils/size_config.dart';
import 'package:my_gallery_app/features/login/presentation/manager/login_cubit.dart';

import 'custom_background_image.dart';
import 'custom_glass_container_widget.dart';
import 'custom_my_gallery_text.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => instance<LoginCubit>(),
      child: Stack(
        children: [
          const CustomBackGroundImage(),
          Scaffold(
              backgroundColor: Colors.transparent,
              // resizeToAvoidBottomInset: false,
              body: Center(
                child: SingleChildScrollView(
                  // padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
                  // padding: MediaQuery.of(context).viewInsets,
                  child: Form(
                    key: instance<LoginCubit>().loginInputData.loginFormKey,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const CustomMyGalleryText(),
                        SizedBox(height: SizeConfig.screenHeight! * .05,),
                        const CustomGlassContainerWidget()
                      ],
                    ),
                  ),
                ),
              )),
        ],
      ),
    );
  }
}







