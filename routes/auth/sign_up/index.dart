import 'dart:convert';

import 'package:dart_frog/dart_frog.dart';
import 'package:game_zone_server/features/auth/domain/models/otp_verify_params.dart';
import 'package:game_zone_server/features/auth/domain/use_cases/cache_auth_data_use_case.dart';
import 'package:game_zone_server/features/core/models/tuple.dart' as tuple;
import 'package:game_zone_server/injectable/injectable.dart';

Future<Response> onRequest(RequestContext context) async {
  final useC = getIt.get<CacheAuthDataUseCase>();
  OtpVerifyParam body = OtpVerifyParam.fromJson(
    jsonDecode(await context.request.body()) as Map<String, dynamic>,
  );
  final ss =
      await useC.call(param: tuple.Tuple3(body.email, body.id, body.jwt));
  return ss.fold(
    (l) {
      return Response(statusCode: 500, body: 'error');
    },
    (r) {
      return Response(body: 'sabt shod');
    },
  );
}
