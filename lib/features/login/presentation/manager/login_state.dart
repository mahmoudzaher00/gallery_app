part of 'login_cubit.dart';

abstract class LoginState extends Equatable {
  const LoginState();
  @override
  List<Object> get props => [];
}

class LoginInitial extends LoginState {

}
class PasswordObscureState extends LoginState {
  final bool obscure;
  const PasswordObscureState(this.obscure);
  @override
  List<Object> get props => [obscure];

}
class LoadingLoginState extends LoginState {}

class SuccessLoginState extends LoginState {}

class FailureLoginState extends LoginState {
  final String error;

  const FailureLoginState(this.error);
}