import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';


import '../../../../core/errors/failures.dart';
import '../../../../core/utils/api_service.dart';
import '../model/request.dart';
import 'auth_repo.dart';

class AuthRepoImpl implements AuthRepo{
  final ApiService apiService;

  AuthRepoImpl(this.apiService);

  @override
  Future<Either<Failure, Response>> login(LoginRequest loginRequest) async{
    var  resp =await apiService.post(
        endPoint: 'auth/login',
        data: {
          "email":loginRequest.userName,
          "password":loginRequest.password
      },
    );

    if(resp.isSuccess) {
        if (kDebugMode) {
          print('${resp.response!.data['token']}');
        }
        if(resp.response!.data['error_message']==null) {
          return right(resp.response!);
        }else{
          print('sqweewew${resp.response}');
          return left(ServerFailure(resp.response!.data['error_message']));
        }
      }else
        {
          return left(ServerFailure(resp.msg));

        }
  }

}