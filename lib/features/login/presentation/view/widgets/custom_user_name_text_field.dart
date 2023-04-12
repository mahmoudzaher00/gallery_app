import 'package:flutter/material.dart';
import 'package:my_gallery_app/features/login/presentation/manager/login_cubit.dart';

import '../../../../../core/app/service_locator.dart';
import '../../../../../core/widgets/custom_text_field.dart';

class CustomUserNameTextField extends StatelessWidget {
  const CustomUserNameTextField({
    Key? key,
  }) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      hintText: 'User Name',
      controller: instance<LoginCubit>().loginInputData.textEditingUserNameController,
      validatorFunction:instance<LoginCubit>().textFieldUserNameValidator,
      textType: TextInputType.name,
    );
  }
}