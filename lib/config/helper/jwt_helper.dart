import 'dart:io';

import 'package:dart_jsonwebtoken/dart_jsonwebtoken.dart';

///
class JWTHelper {
  ///
  String makejwt(String id, String email) {
    final jwt = JWT(
      {
        'id': id,
        'email': email,
      },
      issuer: 'https://github.com/jonasroussel/dart_jsonwebtoken',
    ).sign(
      SecretKey('fantasyStation'),
      expiresIn: const Duration(minutes: 20),
    );
    Cookie cookie = Cookie('fantasy_cookie', jwt);
    cookie.path = '/';
    return cookie.toString();
  }

  ///
  Map<String, dynamic> verifyJWT(String token) {
    try {
      
      final jwt = JWT.verify(
        Cookie.fromSetCookieValue(token).value,
        SecretKey('fantasyStation'),
      );
      return {
        'result': true,
        'jwt': jwt,
        'payload': jwt.payload,
        'message': 'success',
      };
    } on JWTExpiredError {
      return {
        'result': false,
        'message': 'jwt expired',
      };
    } on JWTError catch (ex) {
      return {
        'result': false,
        'message': ex.toString(),
      };
    } on Exception catch (exepErr) {
      return {
        'result': false,
        'message': exepErr.toString(),
      };
    }
  }
}
