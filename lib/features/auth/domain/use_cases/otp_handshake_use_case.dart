// import 'package:asatic/src/features/auth/domain/failures/auth_failure.dart';
// import 'package:asatic/src/features/auth/domain/models/otp_handshake_response.dart';
// import 'package:asatic/src/features/auth/domain/repositories/auth_repository.dart';
// import 'package:asatic/src/features/core/models/use_case.dart';
// import 'package:dartz/dartz.dart';
// import 'package:asatic/src/features/core/models/tuple.dart' as tuple;

// class OtpHandshakeUseCase
//     implements UseCase<AuthFailure, OtpHandshakeResponse, tuple.Tuple1<double>> {
//   const OtpHandshakeUseCase(this.repo);

//   final AuthRepository repo;

//   @override
//   Future<Either<AuthFailure, OtpHandshakeResponse>> call({tuple.Tuple1<double>? param}) =>
//       (param == null)
//           ? Future.value(left(const AuthFailure.nullParam()))
//           : repo.otpHandshake(phoneNumber: param.value1);
// }
