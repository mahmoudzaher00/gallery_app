import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../../../core/errors/failures.dart';
import '../model/request.dart';


abstract class AuthRepo{
  Future<Either<Failure, Response>> login(LoginRequest loginRequest);
}