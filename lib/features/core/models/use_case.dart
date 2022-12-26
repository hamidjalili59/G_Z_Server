import 'package:dartz/dartz.dart';
import 'package:game_zone_server/features/core/models/tuple.dart';

abstract class UseCase<F, S, Params extends Tuple> {
  Future<Either<F, S>> call({Params? param});
}
