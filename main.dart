import 'dart:io';
import 'package:dart_frog/dart_frog.dart';
import 'package:game_zone_server/injectable/injectable.dart';
import 'package:game_zone_server/injectable/module_injection/main_modules_injection.dart';

Future<HttpServer> run(Handler handler, InternetAddress ip, int port) async {
  // 1. Execute any custom code prior to starting the server...
  await _initializeInjection();
  // 2. Use the provided `handler`, `ip`,
  // and `port` to create a custom `HttpServer`.
  // Or use the Dart Frog serve method to do that for you.
  return serve(handler, '0.0.0.0', port);
}

bool _didSetup = false;
Future<void> _initializeInjection() async {
  if (_didSetup) {
    return;
  }
  _didSetup = true;
  final mainModule = MainModulesInjection();
  configureInjection();
  await mainModule.initDatabase();
  await mainModule.registerHiveAdapters();
}
