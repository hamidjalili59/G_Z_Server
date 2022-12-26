import 'package:database_service/database_service.dart';
import 'package:game_zone_server/features/auth/domain/models/otp_verify_params.dart';

class AuthLocalDataSource extends DatabaseCommonOperations<OtpVerifyParam> {
  final DatabaseService dbService;

  AuthLocalDataSource(this.dbService)
      : super(
          boxName: 'AuthDataSource',
          databaseService: dbService,
        );
}
