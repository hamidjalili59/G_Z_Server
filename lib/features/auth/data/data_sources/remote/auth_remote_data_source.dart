import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

abstract class AuthRemoteDataSource {
  // Future<Either<DioError, Response<int>>> otpHandshake(
  //     {required double phoneNumber});

  // Future<Either<DioError, Response<Map<String, dynamic>>>> getDataFromServer(
  //     {required double phoneNumber});
}

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  AuthRemoteDataSourceImpl();

  // @override
  // Future<Either<DioError, Response<int>>> otpHandshake(
  //     {required double phoneNumber}) {}

  // @override
  // Future<Either<DioError, Response<Map<String, dynamic>>>> getDataFromServer(
  //     {required double phoneNumber}) {}
}
