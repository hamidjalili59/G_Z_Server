import 'package:database_service/database_service.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:game_zone_server/features/core/failures/failure.dart';

part 'auth_failure.freezed.dart';

@freezed
class AuthFailure extends Failure with _$AuthFailure {
  ///
  const factory AuthFailure.cancelledByUser() = _CancelledByUser;
  const factory AuthFailure.wrongToken() = _WrongToken;

  ///
  const factory AuthFailure.api(DioError failure) = _Api;
  const factory AuthFailure.forbidden(DioError failure) = _Forbidden;
  const factory AuthFailure.nullParam() = _NullParam;
  const factory AuthFailure.database(DatabaseError failure) = _Database;
}
