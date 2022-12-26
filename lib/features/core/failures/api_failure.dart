// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:game_zone_server/features/core/failures/failure.dart';

part 'api_failure.freezed.dart';

@freezed
class ApiFailure extends Failure with _$ApiFailure {
  const factory ApiFailure.faildHandshake() = _FaildHandshake;
  const factory ApiFailure.unknownFile(e) = _UnknownFile;
  const factory ApiFailure.unknownUser(e) = _UnknownUser;
  const factory ApiFailure.forbidden(e) = _Forbidden;
  const factory ApiFailure.wrongData() = _WrongData;
}
