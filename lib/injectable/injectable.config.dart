// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:game_zone_server/features/auth/data/data_sources/local/auth_local_data_source.dart'
    as _i3;
import 'package:game_zone_server/features/auth/domain/repositories/auth_repository.dart'
    as _i4;
import 'package:game_zone_server/features/auth/domain/use_cases/cache_auth_data_use_case.dart'
    as _i5;
import 'package:game_zone_server/features/auth/domain/use_cases/get_cached_auth_data_use_case.dart'
    as _i6;
import 'package:game_zone_server/injectable/module_injection/features/auth_feature_module.dart'
    as _i7;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

/// ignore_for_file: unnecessary_lambdas
/// ignore_for_file: lines_longer_than_80_chars
extension GetItInjectableX on _i1.GetIt {
  /// initializes the registration of main-scope dependencies inside of [GetIt]
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final authFeatureModule = _$AuthFeatureModule();
    gh.factory<_i3.AuthLocalDataSource>(() => authFeatureModule.localDS);
    gh.factory<_i4.AuthRepository>(() => authFeatureModule.repo);
    gh.factory<_i5.CacheAuthDataUseCase>(() => authFeatureModule.signupUseCase);
    gh.factory<_i6.GetCachedAuthDataUseCase>(
        () => authFeatureModule.signinUseCase);
    return this;
  }
}

class _$AuthFeatureModule extends _i7.AuthFeatureModule {}
