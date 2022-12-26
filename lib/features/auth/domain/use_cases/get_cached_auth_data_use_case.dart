import 'package:dartz/dartz.dart';
import 'package:game_zone_server/features/auth/domain/failures/auth_failure.dart';
import 'package:game_zone_server/features/auth/domain/models/otp_verify_params.dart';
import 'package:game_zone_server/features/auth/domain/repositories/auth_repository.dart';
import 'package:game_zone_server/features/core/models/tuple.dart' as tuple;
import 'package:game_zone_server/features/core/models/use_case.dart';

class GetCachedAuthDataUseCase
    implements UseCase<AuthFailure, OtpVerifyParam?, tuple.Tuple0> {
  const GetCachedAuthDataUseCase(this.repo);

  final AuthRepository repo;

  @override
  Future<Either<AuthFailure, OtpVerifyParam?>> call({tuple.Tuple0? param}) =>
      repo.getCachedAuthData();
}
