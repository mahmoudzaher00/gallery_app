import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/app/service_locator.dart';
import '../../../../../core/utils/size_config.dart';
import '../../../data/model/request.dart';
import '../../manager/login_cubit.dart';

class CustomSubmitButton extends StatelessWidget {
  const CustomSubmitButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginCubit, LoginState>(
      buildWhen: (previous, current) => current is LoadingLoginState || current is SuccessLoginState || current is FailureLoginState,

      builder: (context, state) {
        if(state is LoadingLoginState){
         return Center(
            child: CircularProgressIndicator(),
          );

        }else {
          return ElevatedButton(
          onPressed: () {
            if (instance<LoginCubit>().loginInputData.loginFormKey.currentState!
                .validate()) {
              instance<LoginCubit>().login(LoginRequest(
                instance<LoginCubit>().loginInputData.textEditingUserNameController.text,
                instance<LoginCubit>().loginInputData.textEditingPasswordController.text,
              ), context);
            }
          },
          style: ElevatedButton.styleFrom(
              minimumSize: Size(SizeConfig.screenWidth!, 40)
          ),
          child: const Text('Submit'),

        );
        }
      },
    );
  }
}