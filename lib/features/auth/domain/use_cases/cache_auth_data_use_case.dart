import 'package:dartz/dartz.dart';
import 'package:game_zone_server/features/auth/domain/failures/auth_failure.dart';
import 'package:game_zone_server/features/auth/domain/repositories/auth_repository.dart';
import 'package:game_zone_server/features/core/models/tuple.dart' as tuple;
import 'package:game_zone_server/features/core/models/use_case.dart';

class CacheAuthDataUseCase
    implements
        UseCase<AuthFailure, void, tuple.Tuple3<String, String, String>> {
  const CacheAuthDataUseCase(this.repo);

  final AuthRepository repo;

  @override
  Future<Either<AuthFailure, void>> call({
    tuple.Tuple3<String, String, String>? param,
  }) =>
      (param == null)
          ? Future.value(left(const AuthFailure.nullParam()))
          : repo.cacheAuthData(
              email: param.value1,
              id: param.value2,
              jwt: param.value3,
            );
}
