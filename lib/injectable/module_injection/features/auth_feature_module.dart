import 'package:database_service/database_service.dart';
import 'package:game_zone_server/features/auth/data/data_sources/local/auth_local_data_source.dart';
import 'package:game_zone_server/features/auth/data/repositories/auth_repository_impl.dart';
import 'package:game_zone_server/features/auth/domain/repositories/auth_repository.dart';
import 'package:game_zone_server/features/auth/domain/use_cases/cache_auth_data_use_case.dart';
import 'package:game_zone_server/features/auth/domain/use_cases/get_cached_auth_data_use_case.dart';
import 'package:game_zone_server/injectable/injectable.dart';

import 'package:injectable/injectable.dart';

///
@module
abstract class AuthFeatureModule {
  /// Data-Sources
  AuthLocalDataSource get localDS => AuthLocalDataSource(
        getIt.get<DatabaseService>(),
      );

  /// Repositories
  AuthRepository get repo => AuthRepositoryImpl(localDS);

  /// Use-Cases
  ///
  CacheAuthDataUseCase get signupUseCase => CacheAuthDataUseCase(repo);

  ///
  GetCachedAuthDataUseCase get signinUseCase => GetCachedAuthDataUseCase(repo);
}
