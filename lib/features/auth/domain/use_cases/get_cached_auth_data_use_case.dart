// import 'package:asatic/src/features/auth/domain/failures/auth_failure.dart';
// import 'package:asatic/src/features/auth/domain/models/otp_verify_response.dart';
// import 'package:asatic/src/features/auth/domain/repositories/auth_repository.dart';
// import 'package:asatic/src/features/core/models/use_case.dart';
// import 'package:dartz/dartz.dart';
// import 'package:asatic/src/features/core/models/tuple.dart' as tuple;

// class GetCachedAuthDataUseCase
//     implements UseCase<AuthFailure, OtpVerifyResponse?, tuple.Tuple0> {
//   const GetCachedAuthDataUseCase(this.repo);

//   final AuthRepository repo;

//   @override
//   Future<Either<AuthFailure, OtpVerifyResponse?>> call({tuple.Tuple0? param}) =>
//       repo.getCachedAuthData();
// }
