import 'package:dio/dio.dart';

import '../errors/failures.dart';
const String APPLICATION_JSON = "application/json";
const String CONTENT_TYPE = "content-type";
const String ACCEPT = "accept";
const String AUTHORIZATION = "authorization";
const String DEFAULT_LANGUAGE = "language";

class ApiService {
  final _baseUrl = 'https://technichal.prominaagency.com/api/';
  final Dio _dio;

  ApiService(this._dio){
    _dio.options = BaseOptions(
      baseUrl: _baseUrl,
      connectTimeout: 5000,
      receiveTimeout: 5000,
      receiveDataWhenStatusError: true,
      contentType:
      "multipart/form-data; boundary=<calculated when request is sent>",
    );
  }
  Future<MyResponse> get({required String endPoint,Map<String,dynamic>? parameters, String? token,String?lang}) async {
    try{
      _dio.options.headers={
        'Accept': ACCEPT,
        'lang': lang,
        'Authorization': "Bearer $token",
      };
      var response = await _dio.get(endPoint,queryParameters: parameters??{});
      return MyResponse(msg: response.data['message'],isSuccess: true,response: response);

    }on Exception catch (ex){
      if(ex is DioError) {

        return MyResponse(msg: ServerFailure.fromDioError(ex).errMessage,isSuccess: false);
      }else{
        return MyResponse(msg: ServerFailure(ex.toString()).errMessage,isSuccess: false);

      }
    }

  }
  Future<MyResponse> post({required String endPoint,Map<String,dynamic>? data}) async {
    try{
      _dio.options.headers={
        // 'Accept': 'application/json',
        // 'lang': lang,
        // 'Authorization': "Bearer $token",
      };
      var response = await _dio.post(endPoint,data: FormData.fromMap(data ?? {}));
      print('124${response.data}');

      return MyResponse(msg: response.data['message']??response.data['error_message']??'',isSuccess: true,response: response);

    }on Exception catch (ex){
      if(ex is DioError) {

        return MyResponse(msg: ServerFailure.fromDioError(ex).errMessage,isSuccess: false);
      }else{
        return MyResponse(msg: ServerFailure(ex.toString()).errMessage,isSuccess: false);

      }
    }

  }
}
class MyResponse {
  final String msg;
  final bool isSuccess;
  final Response? response;

  MyResponse({required this.msg,required this.isSuccess, this.response});
}
