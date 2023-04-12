import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:my_gallery_app/features/login/presentation/view/login_input_data.dart';

import '../../../../core/utils/toast_message.dart';
import '../../data/model/request.dart';
import '../../data/repository/auth_repo.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this.authRepo) : super(LoginInitial());
  final AuthRepo authRepo;
  LoginInputData loginInputData=LoginInputData();
  bool passwordObscure = true;
  //TODO:UI Functions & Validation
  void passwordVisible() {
    passwordObscure = !passwordObscure;

    emit(PasswordObscureState(passwordObscure));
  }

  String? textFieldUserNameValidator(String? value) {
    if (value!.isEmpty) {
      return 'please enter user name';
    } else {
      return null;
    }
  }

  String? textFieldPassWordValidator(String? value) {
    if (value!.isEmpty) {
      return 'please enter password';
    } else {
      return null;
    }
  }

  //TODO:APIS Functions
  Future<void> login(LoginRequest loginRequest,context)async {
    emit(LoadingLoginState());
    var result=await authRepo.login(loginRequest);

    result.fold((failure) {
      showToast(message: failure.errMessage, state: ToastStates.error);
      emit(FailureLoginState(failure.errMessage)) ;
    }, (success) {
      print(success);
      // CacheHelper.putDataInSharedPreference(value:success.data['token'] , key:  'USER_TOKEN');
      // Navigator.pushNamedAndRemoveUntil(context, Routes.mainRoute, (route) => false);
      emit(SuccessLoginState());
    });

  }


}
