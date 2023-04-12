import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/app/service_locator.dart';
import '../../../../../core/resources/color_manager.dart';
import '../../../../../core/widgets/custom_text_field.dart';
import '../../manager/login_cubit.dart';

class CustomPasswordTextField extends StatelessWidget {
  const CustomPasswordTextField({
    Key? key,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginCubit, LoginState>(
      builder: (context, state) {
        return CustomTextField(
          controller: instance<LoginCubit>().loginInputData.textEditingPasswordController,
          hintText: 'Password',
          obscure: instance<LoginCubit>().passwordObscure,
          suffixIconWidget: IconButton(
            icon: Icon(
                instance<LoginCubit>().passwordObscure
                    ? Icons.visibility
                    : Icons.visibility_off,
                color: ColorManager.grey, size: 18),
            onPressed: () {
              instance<LoginCubit>().passwordVisible();
            },
          ),
          validatorFunction: instance<LoginCubit>().textFieldPassWordValidator,
        );
      },
    );
  }
}