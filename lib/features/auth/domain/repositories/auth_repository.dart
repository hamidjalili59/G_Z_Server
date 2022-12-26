import 'package:dartz/dartz.dart';
import 'package:game_zone_server/features/auth/domain/failures/auth_failure.dart';
import 'package:game_zone_server/features/auth/domain/models/otp_handshake_request.dart';
import 'package:game_zone_server/features/auth/domain/models/otp_verify_params.dart';
import 'package:game_zone_server/features/auth/domain/models/otp_verify_request.dart';

abstract class AuthRepository {
  //
  Future<Either<AuthFailure, void>> cacheAuthData({
    required String email,
    required String id,
    required String jwt,
  });
  //
  Future<Either<AuthFailure, OtpVerifyParam?>> getCachedAuthData();
  //
}
