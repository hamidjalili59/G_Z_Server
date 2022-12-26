// import 'package:asatic/src/features/auth/domain/failures/auth_failure.dart';
// import 'package:asatic/src/features/auth/domain/repositories/auth_repository.dart';
// import 'package:asatic/src/features/core/models/use_case.dart';
// import 'package:dartz/dartz.dart';
// import 'package:asatic/src/features/core/models/tuple.dart' as tuple;

// class CacheAuthDataUseCase
//     implements UseCase<AuthFailure, void, tuple.Tuple2<String,double>> {
//   const CacheAuthDataUseCase(this.repo);

//   final AuthRepository repo;

//   @override
//   Future<Either<AuthFailure, void>> call({tuple.Tuple2<String,double>? param}) =>
//       (param == null)
//           ? Future.value(left(const AuthFailure.nullParam()))
//           : repo.cacheAuthData(jwt: param.value1,phoneNumber: param.value2);
// }
