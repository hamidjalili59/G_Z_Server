import 'package:dart_frog/dart_frog.dart';
import 'package:game_zone_server/features/auth/domain/use_cases/get_cached_auth_data_use_case.dart';
import 'package:game_zone_server/injectable/injectable.dart';

Handler middleware(Handler handler) {
  return (context) async {
    // Execute code before request is handled.

    // Forward the request to the respective handler.
    final response = await handler(context);

    if (response.headers['Secret_key'] == 'Alijahany') {
      print('ok');

      context.provide<GetCachedAuthDataUseCase>(
        () => getIt.get<GetCachedAuthDataUseCase>(),
      );
    }

    // Execute code after request is handled.

    // Return a response.
    return response;
  };
}
