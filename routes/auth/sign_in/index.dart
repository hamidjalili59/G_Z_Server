import 'package:dart_frog/dart_frog.dart';
import 'package:game_zone_server/features/auth/domain/models/otp_verify_params.dart';
import 'package:game_zone_server/features/auth/domain/use_cases/get_cached_auth_data_use_case.dart';
import 'package:game_zone_server/features/core/models/tuple.dart' as tuple;
import 'package:game_zone_server/injectable/injectable.dart';

Future<Response> onRequest(RequestContext context) async {
  final useC = getIt.get<GetCachedAuthDataUseCase>();
  final ss = await useC.call(param: tuple.Tuple0());
  return ss.fold(
    (l) {
      return Response(statusCode: 500, body: 'error');
    },
    (r) {
      return Response(
        body: (r ?? OtpVerifyParam(email: 'email', id: 'id', jwt: 'jwt'))
            .toJson()
            .toString(),
      );
    },
  );
}
