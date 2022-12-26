import 'package:dartz/dartz.dart';
import 'package:game_zone_server/features/auth/data/data_sources/local/auth_local_data_source.dart';
import 'package:game_zone_server/features/auth/domain/failures/auth_failure.dart';
import 'package:game_zone_server/features/auth/domain/models/otp_verify_params.dart';
import 'package:game_zone_server/features/auth/domain/repositories/auth_repository.dart';

class AuthRepositoryImpl extends AuthRepository {
  final AuthLocalDataSource _localDS;
  final String tokenFieldKey = 'token';

  AuthRepositoryImpl(this._localDS);

  @override
  Future<Either<AuthFailure, void>> cacheAuthData({
    required String email,
    required String id,
    required String jwt,
  }) {
    return _localDS
        .cacheData(
          fieldKey: tokenFieldKey,
          value: OtpVerifyParam(
            email: email,
            id: id,
            jwt: jwt,
          ),
        )
        .then(
          (value) => value.fold(
            (l) => left<AuthFailure, void>(AuthFailure.database(l)),
            (r) => right<AuthFailure, void>(null),
          ),
        );
  }

  @override
  Future<Either<AuthFailure, OtpVerifyParam?>> getCachedAuthData() =>
      _localDS.getCachedData(fieldKey: tokenFieldKey).then(
            (value) => value.fold(
              (l) =>
                  left<AuthFailure, OtpVerifyParam?>(AuthFailure.database(l)),
              (r) => right<AuthFailure, OtpVerifyParam?>(r),
            ),
          );
}
