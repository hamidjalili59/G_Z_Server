import 'package:database_service/database_service.dart';
import 'package:game_zone_server/config/helper/jwt_helper.dart';
import 'package:game_zone_server/features/auth/domain/models/otp_handshake_request.dart';
import 'package:game_zone_server/features/auth/domain/models/otp_verify_params.dart';
import 'package:game_zone_server/features/auth/domain/models/otp_verify_request.dart';
import 'package:game_zone_server/injectable/injectable.dart';

///
class MainModulesInjection {
  ///
  MainModulesInjection() {
    getIt
      ..registerLazySingleton<DatabaseService>(() {
        return DatabaseServiceImpl();
      })
      ..registerLazySingleton<JWTHelper>(() {
        return JWTHelper();
      });
  }

  ///
  Future<dynamic> initDatabase() async =>
      getIt.get<DatabaseService>().initialize();

  ///
  Future<dynamic> registerHiveAdapters() async {
    final databaseService = getIt.get<DatabaseService>();

    await databaseService.registerAdapter<OtpHandshakeRequest>(
      OtpHandshakeRequestAdapter(),
    );
    await databaseService.registerAdapter<OtpVerifyParam>(
      OtpVerifyParamAdapter(),
    );
    await databaseService.registerAdapter<OtpVerifyRequest>(
      OtpVerifyRequestAdapter(),
    );
  }
}
